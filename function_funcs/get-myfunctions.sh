#!/bin/bash

############################################
# SYNOPSIS
# - The "get-myfunctions" function returns defined functions that I have created within a defined directory tree.
#
###########
# NOTES
# - Name:  get-myfunctions.sh
# - Author:  Travis Logue
# - Version History:  1.1 | Initial Version
# - Dependencies:  
# - Notes:
#   - Good reference of looping through results of the "find" command and executing another command:  https://stackoverflow.com/questions/9612090/how-to-loop-through-file-names-returned-by-find
#   - More info on the "find" command:  https://w3cschoool.com/tutorial/linux-find
#
###########
# EXAMPLE
<< '#comment'
# ... Here we show the normal output of calling the function ...

  my_bash_funcs$ get-myfunctions 
  function measure-fileCharacterCount () {
  function measure-fileLineCount () {
  function search-filesForString () {
  function search-filesForStringFilenameOnly () {
  function search-filesForStringRecursively () {
  function search-filesForStringFollowSymlinks () {
  function search-filesForStringWithLineNums () {
  function sort-filesBySize () {
  function sort-filesBySizeTrimmed () {
  function sort-filesBySizeRecursively () {
  function sort-filesBySizeIncludeDirectories () {
  function sort-filesBySizeDirectoriesOnly () {
  function sort-filesByTimestamp () {
  function sort-filesByTimestampTrimmed () {
  function sort-filesByTimestampRecursively () {
  function sort-filesByTimestampIncludeDirectories () {
  function sort-filesByTimestampDirectoriesOnly () {
  function get-functions () {
  function get-ipaddress () {
  function get-ipaddress6 () {
  function get-ipaddressAll () {
  function get-prompt () {
  function save-promptOriginal () {
  function change-prompt () {
  function get-storageUsge () {
  function get-storageOverview () {
#comment
############################################


function get-myfunctions () {
  find ~/sh_files/*_funcs/*.sh -type f -exec grep '^function ' {} \; | cut -d ' ' -f 2
}

