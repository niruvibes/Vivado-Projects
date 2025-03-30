# Ass1 Sample Autotest

The autotest is in the form of a testbench that prints the outputs
of your design to the XSim console. There is a testbench for your 
structural model. To test your model, add `autotest01.v` to your 
Vivado Project, and ensure its association is set to 
`simulation`. Run the simulation (the default 1000ns should be
fine). In the XSim window, go to the `Tcl Console` tab at the bottom
of the XSim window and observe the output. Compare this to
`autotest01.exp`, it should match exactly (disregard the default 
XSim messages before the outputs start printing).

**IMPORTANT** This is not a complete test of whether your model
is correct. This is just a sanity test so you can confirm that
your model will work with the autotests we will run after 
submission.
