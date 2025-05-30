//
// Vivado(TM)
// rundef.js: a Vivado-generated Runs Script for WSH 5.1/5.6
// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//

var WshShell = new ActiveXObject( "WScript.Shell" );
var ProcEnv = WshShell.Environment( "Process" );
var PathVal = ProcEnv("PATH");
if ( PathVal.length == 0 ) {
  PathVal = "F:/Xilinx/egkatastasi/SDK/2015.1/bin;F:/Xilinx/egkatastasi/Vivado/2015.1/ids_lite/ISE/bin/nt64;F:/Xilinx/egkatastasi/Vivado/2015.1/ids_lite/ISE/lib/nt64;F:/Xilinx/egkatastasi/Vivado/2015.1/bin;";
} else {
  PathVal = "F:/Xilinx/egkatastasi/SDK/2015.1/bin;F:/Xilinx/egkatastasi/Vivado/2015.1/ids_lite/ISE/bin/nt64;F:/Xilinx/egkatastasi/Vivado/2015.1/ids_lite/ISE/lib/nt64;F:/Xilinx/egkatastasi/Vivado/2015.1/bin;" + PathVal;
}

ProcEnv("PATH") = PathVal;

var RDScrFP = WScript.ScriptFullName;
var RDScrN = WScript.ScriptName;
var RDScrDir = RDScrFP.substr( 0, RDScrFP.length - RDScrN.length - 1 );
var ISEJScriptLib = RDScrDir + "/ISEWrap.js";
eval( EAInclude(ISEJScriptLib) );


// pre-commands:
ISETouchFile( "init_design", "begin" );
ISEStep( "vivado",
         "-log FAdder.vdi -applog -m64 -messageDb vivado.pb -mode batch -source FAdder.tcl -notrace" );





function EAInclude( EAInclFilename ) {
  var EAFso = new ActiveXObject( "Scripting.FileSystemObject" );
  var EAInclFile = EAFso.OpenTextFile( EAInclFilename );
  var EAIFContents = EAInclFile.ReadAll();
  EAInclFile.Close();
  return EAIFContents;
}
