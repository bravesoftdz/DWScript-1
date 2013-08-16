CleanupGlobalVars;

PrintLn(ReadGlobalVar('test'));
PrintLn(ReadGlobalVarDef('test', 'empty'));

var v : Variant := 'def';
PrintLn(TryReadGlobalVar('test', v));
PrintLn(v);

WriteGlobalVar('test', 'hello');

PrintLn(TryReadGlobalVar('test', v));
PrintLn(v);

PrintLn(ReadGlobalVarDef('test', 'empty'));

WriteGlobalVar('123', 'world');

PrintLn(ReadGlobalVarDef('123', 'empty'));

WriteGlobalVar('123', 'world!');

PrintLn(ReadGlobalVarDef('123', 'empty'));

PrintLn(GlobalVarsNamesCommaText);

DeleteGlobalVar('123');

PrintLn(ReadGlobalVarDef('123', 'empty'));
PrintLn(ReadGlobalVarDef('test', 'empty'));

PrintLn(GlobalVarsNamesCommaText);

CleanupGlobalVars;

PrintLn(ReadGlobalVarDef('test', 'empty'));

