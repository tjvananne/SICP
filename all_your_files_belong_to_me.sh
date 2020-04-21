
# I'm having to create this file because files created in windows subsystem for linux
# but then edited in Windows can sometimes reset the ownership so that the file
# can no longer be edited in WSL. When that happens, I'm unable to add those files
# to a commit or push them to my remote repo.
sudo chown -R tjvan ./*;
sudo chmod -R 777 ./*;


