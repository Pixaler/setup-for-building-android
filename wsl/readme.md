Requirments: 
	- WSL 2 
	- Minimum 16 GB

Steps:
0. Increase memory to 12GB
	LINK: https://learn.microsoft.com/en-us/windows/wsl/wsl-config#wslconfig - config for WSL
	Put .wslconfig in C:\Users\%USERNAME%

1. Install mc for better UX 

2. setup-for-building-android download and change to your setup
	LINK: https://github.com/Pixaler/setup-for-building-android/

3. Starting build
- With rbuild:
	1) edit rbuild to your device and source folder
	2) run rbuild

- Manualy 
    1) . build/envsetup.sh
		- Choose your device
    2) lunch 
    3) make -j(nproc-all)

Troubleshoot:
1.	Problem: if build not start or exit with 1 status code
	Solve: your RAM is overloaded. RAM must higher than 8GB and lower than your max capacity. For example, for 16GB RAM - 12GB is enough.
