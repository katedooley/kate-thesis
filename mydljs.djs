\begingroup
\obeyspaces\obeylines\global\let^^M=\jsR%
\catcode`\"=12%
\gdef\dljsmydljsiii{%
function HelloWorld() { app.alert("Hello to everyone at the CSU
Academic Computing Conference!", 3); }
}%
\endgroup
\begingroup 
\ccpdftex%
\input{dljscc.def}% 
\immediate\csname @pdfm@mark\endcsname{obj @objmydljsiii << /S /JavaScript /JS (\dljsmydljsiii) >> }
\endgroup 
\endinput
