
DIRS  = $(shell ls -p | grep "/")

all:
	@$(foreach DIR, $(DIRS), cd $(DIR) && make all && cd ..;)

clean:
	@$(foreach DIR, $(DIRS), cd $(DIR) && make clean && cd ..;)

# http://blog.jgc.org/2015/04/the-one-line-you-should-add-to-every.html
# http://www.nostarch.com/gnumake

print-%: ; @echo $* "=>" $($*)


