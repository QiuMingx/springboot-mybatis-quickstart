@echo off
chcp 65001
echo 构建并提交到  %1
if "%1"=="" (echo 构建并提交到 && 
git checkout -b release-2.1.0 origin/release-2.1.0 
&& git checkout -b release-2.10.0 origin/release-2.10.0 
&& git checkout -b release-2.11.0 origin/release-2.11.0 
&& git checkout -b release-2.12.0 origin/release-2.12.0 
&& git checkout -b release-2.13.0 origin/release-2.13.0 
&& git checkout -b release-2.2.0 origin/release-2.2.0 
&& git checkout -b release-2.3.0 origin/release-2.3.0 && git checkout -b release-2.4.0 origin/release-2.4.0 
&& git checkout -b release-2.5.0 origin/release-2.5.0 && git checkout -b release-2.6.0 origin/release-2.6.0 
&& git checkout -b release-2.6.1 origin/release-2.6.1 && git checkout -b release-2.7.0 origin/release-2.7.0 
&& git checkout -b release-2.8.0 origin/release-2.8.0 && git checkout -b release-2.9.0 origin/release-2.9.0 
&& git push --all gitlab && git push gitlab --tags) 
else (echo 构建并提交&& git remote add gitlab %1 && git push -u gitlab master && git checkout -b dev origin/dev  
&& git checkout -b release-2.0.0 origin/release-2.0.0 && git checkout -b release-2.1.0 origin/release-2.1.0 
&& git checkout -b release-2.10.0 origin/release-2.10.0 && git checkout -b release-2.11.0 origin/release-2.11.0 
&& git checkout -b release-2.12.0 origin/release-2.12.0 && git checkout -b release-2.13.0 origin/release-2.13.0 
&& git checkout -b release-2.2.0 origin/release-2.2.0 && git checkout -b release-2.3.0 origin/release-2.3.0 
&& git checkout -b release-2.4.0 origin/release-2.4.0 && git checkout -b release-2.5.0 origin/release-2.5.0 
&& git checkout -b release-2.6.0 origin/release-2.6.0 && git checkout -b release-2.6.1 origin/release-2.6.1 
&& git checkout -b release-2.7.0 origin/release-2.7.0 && git checkout -b release-2.8.0 origin/release-2.8.0 
&& git checkout -b release-2.9.0 origin/release-2.9.0 && git checkout -b test origin/test 
&&git checkout -b release1.0 origin/release1.0  &&
git push --all gitlab 
&& git push gitlab --tags
)

pause
