
# paxos-sim (Java 17, fixed)

Ready‑to‑run Maven project demonstrating Paxos consensus with simulated
message drop / delay. Each DTO is now in its **own source file** so the
project compiles cleanly in IntelliJ IDEA or `mvn package`.

## Quick start

```bash
# unzip then:
mvn package
java -cp target/paxos-sim-1.2-SNAPSHOT.jar com.example.paxos.PaxosMain
```

Or open the folder in IntelliJ IDEA, set JDK 17, and run `PaxosMain`.
