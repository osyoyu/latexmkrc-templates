#!/usr/bin/perl

$latex        = 'uplatex -halt-on-error';
$latex_silent = 'uplatex -halt-on-error -interaction=batchmode';
$biber        = 'biber --bblencoding=utf8 -u -U --output_safechars';
$dvipdf       = 'dvipdfmx %O -o %D %S';

$pdf_mode = 3; # generate pdf via dvi file

$max_repeat = 5;

if ($^O eq 'darwin') {
  $pdf_previewer = 'open -a Preview %S';
}
