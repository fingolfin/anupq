#############################################################################
####
##
#W  anupqopt.gd             ANUPQ Share Package                 Werner Nickel
#W                                                                Greg Gamble
##
##  Declares functions to do with option manipulation.
##    
#H  @(#)$Id$
##
#Y  Copyright (C) 2001  Lehrstuhl D fuer Mathematik,  RWTH Aachen,  Germany
##
Revision.anupqopt_gd :=
    "@(#)$Id$";

#############################################################################
##
#V  PQ_FUNCTION . . . . . . . . . internal functions called by user functions 
##
DeclareGlobalVariable( "PQ_FUNCTION", 
  Concatenation( [
    "A record whose fields are (function) names and whose values are\n",
    "the internal functions called by the functions with those names." ] )
  );

#############################################################################
##
#V  ANUPQoptions  . . . . . . . . . . . . . . . . . . . .  admissible options
##
DeclareGlobalVariable( "ANUPQoptions", 
  Concatenation( [
    "A record of lists of names of admissible ANUPQ options.\n",
    "Each field is the name of an ANUPQ function and the\n",
    "corresponding value is the list of names of admissible\n",
    "for the function." ] )
  );

#############################################################################
##
#V  ANUPQGlobalOptions . . . . .  options that can be set globally by PqStart
##
##  A list of the options that `PqStart' can set and thereby  make  available
##  to any function  interacting  with  the  {\ANUPQ}  process  initiated  by
##  `PqStart'.
##
DeclareGlobalVariable( "ANUPQGlobalOptions", 
  Concatenation( [
    "A list of the options that PqStart can set and thereby make available\n",
    "to any function interacting with the ANUPQ process initiated by PqStart."
    ] )
  );

#############################################################################
##
#V  ANUPQoptionChecks . . . . . . . . . . . the checks for admissible options
##
DeclareGlobalVariable( "ANUPQoptionChecks", 
  Concatenation( [
    "A record of lists of names of admissible ANUPQ options.\n",
    "A record whose fields are the names of admissible ANUPQ options,\n",
    "and whose values are one-argument functions that return `true' when\n",
    "given a value that is a valid value for the option, and `false'\n",
    "otherwise." ] )
  );

#############################################################################
##
#V  ANUPQoptionTypes . . . . . .  the types (in words) for admissible options
##
DeclareGlobalVariable( "ANUPQoptionTypes", 
  Concatenation( [
    "A record whose fields are the names of admissible ANUPQ options\n",
    "and whose values are words in angle brackets representing the valid\n",
    "types of the options." ] )
  );

#############################################################################
##
#F  VALUE_PQ_OPTION( <optname> ) . . . . . . . . . enhancement of ValueOption
#F  VALUE_PQ_OPTION( <optname>, <defaultval> ) 
#F  VALUE_PQ_OPTION( <optname>, <datarec> ) 
#F  VALUE_PQ_OPTION( <optname>, <defaultval>, <datarec> ) 
##
DeclareGlobalFunction( "VALUE_PQ_OPTION" );
  
#############################################################################
##
#F  SET_GLOBAL_PQ_OPTION(<optname>,<datarec>) .  set global option in PqStart
##
DeclareGlobalFunction( "SET_GLOBAL_PQ_OPTION" );

#############################################################################
##
#F  PQ_BOOL( <optval> ) . .  convert a GAP boolean to a `pq' (i.e. C) boolean
##    
DeclareGlobalFunction( "PQ_BOOL" );
  
#############################################################################
##
#F  PQ_DO_TAILORED_OUTPUT(<datarec>, <subopt>, <suboptstring>, <suppstrings>)
##    
DeclareGlobalFunction( "PQ_DO_TAILORED_OUTPUT" );

#############################################################################
##
#F  SET_ANUPQ_OPTIONS( <funcname>, <options> ) . set options from OptionStack
##    
DeclareGlobalFunction( "SET_ANUPQ_OPTIONS" );

#############################################################################
##
#F  ANUPQoptError( <funcname>, <optnames> ) . . . . . create an error message
##
DeclareGlobalFunction( "ANUPQoptError" );

#############################################################################
##
#F  ANUPQextractOptions( <funcname>, <i>, <args> ) . . . . .  extract options
##
DeclareGlobalFunction( "ANUPQextractOptions" );

#E  anupqopt.gd . . . . . . . . . . . . . . . . . . . . . . . . . . ends here 
