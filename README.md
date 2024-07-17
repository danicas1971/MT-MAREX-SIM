--------- 
MT-MAREX-SIM v2.5: A multithread simulator for P-systems

  Daniel Cascado-Caballero, Fernando Diaz-del-Rio, Daniel Cagigas-Muñiz,
    Dept. of Computer Architecture and Technology,
    Universidad de Sevilla, Seville,Spain

--------

    SINTAX:
      Simulador [Mo=model] [Bi=BCD_init_st] [Th=threads] [Ns=size] [Li=max_Cs] <Verbosity>
    
    PARAMETERS:
      model: model to simulate. GOL by default.
        BCD= Basic Counter and Decission. 4 < N <= 32
        FIBO= Fibonacci model
        RNDG= Random graph generator model
      BCD_init_st: initial configuration for BCD P-system, expressed in binary. Max<=2^32 - 1
      size: model size. 5 by default
      max_Cs: max number of computation steps to execute. 0 = no limit.
      threads: Number of threads per membrane: 0 for unlimited.
    <Verbosity>: options separated by SPACE
      -ti: Execution Time measured in seconds
      -Is: Prints the initial status of the P-system before initialization
      -Ir: Prints intermediate results
      -Fs: Print the final status of the P-system.
      -Cs: Prints the number of computation steps.
      -Th: Prints the number of threads used by the program.
      -Ob: Prints the list of objects of the main membrane.
      -Ex: Prints #rule executions in all the p-system.
      -Tx: Prints the number of thread used by the P-system
      -nR: Prints the number of rules in the p-system
      -nO: Prints the number of objects in the p-system
    INTERACTION: with -Is and once the simulation is running...
      <ANY_KEY> prints p-system status
      <s> exit

This repository contains a Windows portable version of the simulator. 
In the directory "BatchesWin" there are several scripts to execute several performance tests.
