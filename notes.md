# Diploma thesis

## Resources

### Repos

* [original RoadRunner](https://github.com/stephenfreund/RoadRunner)
* [roadrunnerX](https://pajda.fit.vutbr.cz/jct/roadrunnerX)

### Papers

* [Verifying Concurrent Programs using Contracts](http://www.fit.vutbr.cz/~vojnar/Publications/icst17-contracts.pdf)
  (2017)
* [Verifying Concurrent Programs using Contracts - Technical Report](http://www.fit.vutbr.cz/~vojnar/Publications/tr-contracts-16.pdf)
* [Dynamic validation of contracts in concurrent code](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.715.114&rep=rep1&type=pdf)
  (2015)
  * dynamic analysis instead of static
  * contract detection: finite automata for each thread and observed contract
    sequence
  * checking atomicity: lockset-based, at least one lock must be held during the
    contract sequence
  * false positives and false negatives
* [Preventing atomicity violations with contracts](https://docentes.fct.unl.pt/joao-lourenco/files/1505.02951v1-dsousa.pdf)
  (2015)
  * contract definition
  * analysis:
    1. entry methods of threads
    2. detect atomically executed methods
    3. extract program behavior with respect to the module under analysis
    4. verify thatt the module is used according to the contract
  * program's thread behavior grammar
  * possible mistake in 1st example: missing G -\> H
  * contract verification algorithm
  * adding points-to information (modified grammar)
  * contracts with parameters
* [ANaConDA: A Framework for Analysing Multithreaded C/C++ Programs on the Binary Level](http://dx.doi.org/10.1007/978-3-642-35632-2_5)
  (2012)
* FastTrack: efficient and precise dynamic race detection (2009)
* C. Hurlin. Specifying and checking protocols of multithreaded classes. (2009)
* Y. Cheon and A. Perumandla. Specifying and checking method call sequences of
  java programs. (2007)
* Control flow analysis (2003)
  * control flow graph definition
* [Applying “design by contract”](http://se.ethz.ch/~meyer/publications/computer/contract.pdf)
  (1992)
  * move away from defensive programming
  * contract = precondition, postcondition, invariant
  * no hidden clauses
  * who should check - client vs. supplier
  * invariants: hold for all observable states
  * inheritance: precondition must be equal or weaker, postcondition equal or
    stronger
  * dynamic binding
  * exception handling
  * [Wikipedia](https://en.wikipedia.org/wiki/Design_by_contract)
