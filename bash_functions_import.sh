#!/bin/bash

################################
# The setup for installation of the tools on a new system:

# mkdir -p ~/Documents/Temp
# cd ~/Documents/Temp
# git clone https://github.com/SecTraversl/sh_files.git


################################
# We change to a specific directory for the execution in the next section

cd ~/Temp/sh_files


################################
# Here we are importing the tools contained in each of the designated directories

. ./alias_funcs/get-alias.sh
. ./alias_funcs/remove-alias.sh
. ./alias_funcs/remove-aliasAll.sh
. ./alias_funcs/set-alias.sh
. ./column-select-sort-and-split_funcs/join-column.sh
. ./column-select-sort-and-split_funcs/select-column.sh
. ./column-select-sort-and-split_funcs/select-columnAfterSplit.sh
. ./column-select-sort-and-split_funcs/split-column.sh
. ./column-select-sort-and-split_funcs/split-plus.sh
. ./display-resolution_funcs/get-displayResolution.sh
. ./display-resolution_funcs/set-displayResolution800x600.sh
. ./display-resolution_funcs/set-displayResolution1920x1080.sh
. ./files-and-folders_funcs/get-dirs.sh
. ./files-and-folders_funcs/get-fileLineEnding.sh
. ./files-and-folders_funcs/get-files.sh
. ./files-and-folders_funcs/get-filesNameOnly.sh
. ./files-and-folders_funcs/measure-fileCharacterCount.sh
. ./files-and-folders_funcs/measure-fileLineCount.sh
. ./files-and-folders_funcs/rename-filesExample.sh
. ./files-and-folders_funcs/search-filesForString.sh
. ./files-and-folders_funcs/search-filesForStringFilenameOnly.sh
. ./files-and-folders_funcs/search-filesForStringFollowSymlinks.sh
. ./files-and-folders_funcs/search-filesForStringRecursively.sh
. ./files-and-folders_funcs/search-filesForStringWithLineNums.sh
. ./files-and-folders_funcs/search-filesForString.sh
. ./files-and-folders_funcs/sort-filesBySize.sh
. ./files-and-folders_funcs/sort-filesBySizeDirectoriesOnly.sh
. ./files-and-folders_funcs/sort-filesBySizeIncludeDirectories.sh
. ./files-and-folders_funcs/sort-filesBySizeRecursively.sh
. ./files-and-folders_funcs/sort-filesBySizeTrimOutput.sh
. ./files-and-folders_funcs/sort-filesByTimestamp.sh
. ./files-and-folders_funcs/sort-filesByTimestampDirectoriesOnly.sh
. ./files-and-folders_funcs/sort-filesByTimestampIncludeDirectories.sh
. ./files-and-folders_funcs/sort-filesByTimestampRecursively.sh
. ./files-and-folders_funcs/sort-filesByTimestampTrimOutput.sh
. ./function_funcs/get-myfunctions.sh
. ./function_funcs/get-myfunctionsParentDirAndFileOnly.sh
. ./history_funcs/get-history.sh
. ./networking_funcs/get-ipaddress.sh
. ./networking_funcs/get-ipaddress6.sh
. ./networking_funcs/get-ipaddressAll.sh
. ./networking_funcs/get-route.sh
. ./nmap_funcs/nmap-hostsResultsParsed.sh
. ./nmap_funcs/nmap-hostsScanLocalNetwork.sh
. ./permission-and-owner_funcs/get-permissionsNumericFormat.sh
. ./prompt_funcs/change-prompt.sh
. ./prompt_funcs/get-prompt.sh
. ./prompt_funcs/save-promptOriginal.sh
. ./python-helper_funcs/between-inclusive.sh
. ./python-helper_funcs/find-all.sh
. ./storage-space_funcs/get-storageUsage.sh
. ./storage-space_funcs/get-storageOverview.sh
. ./user-and-group_funcs/add-groupMember.sh
. ./user-and-group_funcs/get-groupMembers.sh
. ./user-and-group_funcs/get-groupMembersOnly.sh
. ./user-and-group_funcs/get-groups.sh
. ./user-and-group_funcs/get-groupsWithMembers.sh
. ./user-and-group_funcs/get-groups.sh
. ./user-and-group_funcs/get-users.sh
. ./user-and-group_funcs/get-usersListAll.sh
. ./user-and-group_funcs/new-group.sh
. ./user-and-group_funcs/remove-groupMember.sh
. ./variables-and-env_funcs/add-pathAppend.sh
. ./variables-and-env_funcs/add-pathPrepend.sh
. ./variables-and-env_funcs/get-path.sh
. ./variables-and-env_funcs/get-variablesInProfileFiles.sh
. ./variables-and-env_funcs/reset-environment.sh


################################
# Then we change back to the original directory prior to the above execution

cd - 1>/dev/null

