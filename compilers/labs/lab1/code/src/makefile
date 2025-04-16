CC = gcc
FLEX = flex
BISON = bison
CFLAGS = -std=c99

CFILES = $(shell find ./ -name "*.c")
OBJS = $(CFILES:.c=.o)
LFILE = $(shell find ./ -name "*.l")
YFILE = $(shell find ./ -name "*.y")
LFC = $(shell find ./ -name "*.l" | sed s/[^/]*\\.l/lex.yy.c/)
YFC = $(shell find ./ -name "*.y" | sed s/[^/]*\\.y/syntax.tab.c/)
LFO = $(LFC:.c=.o)
YFO = $(YFC:.c=.o)

parser: syntax $(filter-out $(LFO),$(OBJS))
	$(CC) -o parser $(filter-out $(LFO),$(OBJS)) -lfl

syntax: lexical syntax-c
	$(CC) -c $(YFC) -o $(YFO)

lexical: $(LFILE)
	$(FLEX) -o $(LFC) $(LFILE)

syntax-c: $(YFILE)
	$(BISON) -o $(YFC) -d -v $(YFILE)

# 这里可以根据需要生成 .d 文件用来做依赖管理
-include $(patsubst %.o, %.d, $(OBJS))

.PHONY: clean test

test: parser
	@echo "Running test1.cmm ..."
	./parser ../test/test1.cmm
	@echo "Running test2.cmm ..."
	./parser ../test/test2.cmm
	@echo "Running test3.cmm ..."
	./parser ../test/test3.cmm
	@echo "Running test4.cmm ..."
	./parser ../test/test4.cmm

#	@echo "Running test5.cmm ..."
#	./parser ../test/test5.cmm
#	@echo "Running test6.cmm ..."
#	./parser ../test/test6.cmm
#	@echo "Running test7.cmm ..."
#	./parser ../test/test7.cmm
#	@echo "Running test8.cmm ..."
#	./parser ../test/test8.cmm
#	@echo "Running test9.cmm ..."
#	./parser ../test/test9.cmm
#	@echo "Running test10.cmm ..."
#	./parser ../test/test10.cmm


clean:
	rm -f parser lex.yy.c syntax.tab.c syntax.tab.h syntax.output
	rm -f $(OBJS) $(OBJS:.o=.d)
	rm -f $(LFC) $(YFC) $(YFC:.c=.h)
