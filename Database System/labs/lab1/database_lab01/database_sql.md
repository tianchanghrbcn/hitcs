目前已经完成数据库 `flights` 的设计并创建了所有基础表格。下面是对所有表格之间关系和依赖的总结，确保符合实验要求，并检查是否满足范式和关系约束。

### 总体关系和依赖总结

#### 1. **实体和表格数量**
我们已经创建了 8 个主要实体（表）：
- `Airplane`（飞机）
- `Airline`（航空公司）
- `Airport`（机场）
- `Passenger`（乘客）
- `Crew`（机组成员）
- `Flight`（航班）
- `Ticket`（票务）
- `Schedule`（航班安排）

此外，还创建了一个中间表 `Flight_Crew` 来管理 `Flight` 和 `Crew` 之间的多对多关系。

#### 2. **关系数量**
在数据库设计中实现了 7 个主要联系：

1. **`Flight` 和 `Airplane`**（多对一）：每个航班使用一架飞机。
   - 通过外键 `AirplaneID` 关联到 `Airplane` 表。

2. **`Flight` 和 `Airline`**（多对一）：每个航班属于一个航空公司。
   - 通过外键 `AirlineID` 关联到 `Airline` 表。

3. **`Flight` 和 `Airport`**（多对一）：每个航班有一个起飞机场和一个到达机场。
   - `DepartureAirportID` 和 `ArrivalAirportID` 通过外键分别关联到 `Airport` 表。

4. **`Ticket` 和 `Flight`**（多对一）：一个航班可以有多个票务记录，表示乘客订票情况。
   - 通过外键 `FlightID` 关联到 `Flight` 表。

5. **`Ticket` 和 `Passenger`**（多对一）：一个乘客可以购买多张票。
   - 通过外键 `PassengerID` 关联到 `Passenger` 表。

6. **`Flight` 和 `Crew`**（多对多）：一个航班可以有多个机组成员，每个机组成员可以参与多个航班，通过中间表 `Flight_Crew` 体现。
   - `FlightID` 和 `CrewID` 通过中间表 `Flight_Crew` 进行多对多关联。

7. **`Flight` 和 `Schedule`**（一对一）：每个航班有唯一的航班安排，记录飞行时长。
   - 通过外键 `FlightID` 关联到 `Schedule` 表。

### 检查范式要求

#### **第一范式 (1NF)**
- 每个表的字段都保持原子性，没有复合属性。所有字段都是不可进一步分解的。

#### **第二范式 (2NF)**
- 所有非主键字段都完全依赖于主键。每个表的外键和主键关系均设计合理，没有部分依赖。例如：
  - `Ticket` 表的非主键字段（`SeatNumber`、`Price` 等）都完全依赖于 `TicketID` 主键。

#### **第三范式 (3NF)**
- 没有传递依赖。表中的非主键字段不依赖其他非主键字段。例如：
  - `Flight` 表中的 `DepartureTime` 和 `ArrivalTime` 都依赖于主键 `FlightID`，不存在依赖其他非主键字段的情况。

### 约束和完整性检查

#### 主键约束
- 每个表都定义了主键来确保记录的唯一性（如 `FlightID`、`TicketID`、`PassengerID` 等）。

#### 外键约束
- 外键完整性在各表之间通过 `FOREIGN KEY` 约束来实现，确保外键的引用一致性。例如：
  - `FlightID` 在 `Ticket` 表中引用 `Flight` 表。
  - `PassengerID` 在 `Ticket` 表中引用 `Passenger` 表。

#### 空值约束
- 重要字段如 `FlightID`、`AirplaneID`、`DepartureTime`、`SeatNumber` 等都被设置为 `NOT NULL`，确保关键数据不会为空。

### 是否满足实验要求

- **8 个实体**：已创建了 8 个实体（表），符合要求。
- **7 个联系**：表格之间的联系（多对多、一对多、一对一）符合要求。
- **完整性约束**：所有关系中都体现了主键约束、外键约束、空值约束，确保了数据的完整性。

下面添加了一些常用查询的视图、索引、插入与删除操作、连接查询、嵌套查询、分组查询以及 `HAVING` 子句的使用。

### 常用查询的视图和索引

#### 1. **创建常用查询的视图**

**视图 1：查询航班的详细信息，包括机组成员和乘客**

```sql
CREATE VIEW FlightCrewPassengerView AS
SELECT f.FlightID, f.DepartureTime, f.ArrivalTime, 
       c.Name AS CrewName, c.Role AS CrewRole, 
       p.Name AS PassengerName, t.SeatNumber
FROM Flight f
LEFT JOIN Flight_Crew fc ON f.FlightID = fc.FlightID
LEFT JOIN Crew c ON fc.CrewID = c.CrewID
LEFT JOIN Ticket t ON f.FlightID = t.FlightID
LEFT JOIN Passenger p ON t.PassengerID = p.PassengerID;
```

**视图 2：查询每个航班的票务统计信息**

```sql
CREATE VIEW FlightTicketStatsView AS
SELECT f.FlightID, COUNT(t.TicketID) AS PassengerCount, 
       SUM(t.Price) AS TotalRevenue, AVG(t.Price) AS AveragePrice
FROM Flight f
LEFT JOIN Ticket t ON f.FlightID = t.FlightID
GROUP BY f.FlightID;
```

#### 2. **创建常用属性的索引**

我们可以为一些常用的查询字段（如 `DepartureTime`、`ArrivalTime` 和 `Price`）创建索引：

```sql
CREATE INDEX idx_flight_departuretime ON Flight(DepartureTime);
CREATE INDEX idx_flight_arrivaltime ON Flight(ArrivalTime);
CREATE INDEX idx_ticket_price ON Ticket(Price);
```

### 插入和删除操作，体现关系表的完整性约束

#### 1. **插入操作：插入重复值和空值**

1. **插入一个完整记录（正常插入）**

```sql
INSERT INTO Ticket (TicketID, PassengerID, FlightID, SeatNumber, Price, TicketType, PurchaseTime)
VALUES ('T134X', 1, 'CR345', '12A', 500.00, 'Economy', '2024-10-24 10:00:00');
```

2. **插入重复主键（触发主键约束）**

```sql
INSERT INTO Ticket (TicketID, PassengerID, FlightID, SeatNumber, Price, TicketType, PurchaseTime)
VALUES ('T111X', 2, 'CR345', '14A', 600.00, 'Economy', '2024-10-25 10:00:00');
-- 会提示主键冲突，因为 TicketID 'T111X' 已经存在
```

3. **插入空值到非空字段（触发非空约束）**

```sql
INSERT INTO Ticket (TicketID, PassengerID, FlightID, SeatNumber, Price, TicketType, PurchaseTime)
VALUES (NULL, 2, 'AB567', '15B', 700.00, 'Business', '2024-10-25 12:00:00');
-- 会提示违反非空约束，因为 TicketID 不能为 NULL
```

#### 2. **删除操作：删除与其他表有外键关系的记录**

1. **删除航班记录（违反外键约束）**

```sql
DELETE FROM Flight WHERE FlightID = 'CR345';
-- 会提示外键约束失败，因为 `Flight_Crew` 或 `Ticket` 表中有记录引用了 'CR345'
```

### 连接查询、嵌套查询、分组查询、HAVING 语句

#### 1. **连接查询**

查询每个航班的机组成员和乘客信息：

```sql
SELECT f.FlightID, f.DepartureTime, f.ArrivalTime, 
       c.Name AS CrewName, p.Name AS PassengerName, t.SeatNumber
FROM Flight f
LEFT JOIN Flight_Crew fc ON f.FlightID = fc.FlightID
LEFT JOIN Crew c ON fc.CrewID = c.CrewID
LEFT JOIN Ticket t ON f.FlightID = t.FlightID
LEFT JOIN Passenger p ON t.PassengerID = p.PassengerID;
```

#### 2. **嵌套查询**

查询购买票价高于平均票价的乘客信息：

```sql
SELECT p.Name, t.FlightID, t.Price
FROM Passenger p
JOIN Ticket t ON p.PassengerID = t.PassengerID
WHERE t.Price > (SELECT AVG(Price) FROM Ticket);
```

#### 3. **分组查询**

按航班号统计每个航班的乘客数量和总票价收入：

```sql
SELECT f.FlightID, COUNT(t.TicketID) AS PassengerCount, SUM(t.Price) AS TotalRevenue
FROM Flight f
JOIN Ticket t ON f.FlightID = t.FlightID
GROUP BY f.FlightID;
```

#### 4. **使用 HAVING 子句**

查询乘客数超过 2 的航班，并显示总收入：

```sql
SELECT f.FlightID, COUNT(t.TicketID) AS PassengerCount, SUM(t.Price) AS TotalRevenue
FROM Flight f
JOIN Ticket t ON f.FlightID = t.FlightID
GROUP BY f.FlightID
HAVING COUNT(t.TicketID) > 2;
```
