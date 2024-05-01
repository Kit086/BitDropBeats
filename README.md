# BitDropBeats

## 简介 / Introduction

**BitDropBeats** 是一个 PowerShell 脚本，灵感来源于电视剧《硅谷》中一个角色为比特币价格波动设置音乐警报的情节。该脚本能够监控比特币的价格变动，并在价格下降超过设定阈值时自动播放音乐。

**BitDropBeats** is a PowerShell script inspired by a scene from the TV show "Silicon Valley", where a character sets up a musical alert for fluctuations in Bitcoin prices. The script monitors changes in the price of Bitcoin and automatically plays music when the price drops below a specified threshold.

## 兼容性说明 / Compatibility Note

本脚本仅在 Windows 11 23H2 版本上进行过测试。我们无法确保它能在其他操作系统或 Windows 版本上正确运行。使用前请谨慎考虑可能的兼容性问题。

This script has been tested only on Windows 11 version 23H2. We cannot guarantee that it will work on other operating systems or versions of Windows. Please consider potential compatibility issues before using it.

## 功能 / Features

- **价格监控**：自动监控比特币价格，检测是否有重大变动。
- **音乐警报**：在比特币价格下降到设定的阈值时自动播放预设的音乐文件。
- **自定义间隔**：用户可以设定监控间隔，根据需求调整检查频率。

- **Price Monitoring**: Automatically monitors Bitcoin prices for significant changes.
- **Music Alert**: Automatically plays a preset music file when the price of Bitcoin falls below a set threshold.
- **Customizable Interval**: Users can set the monitoring interval and adjust the frequency of checks according to their needs.

## 使用方法 / Usage

要使用这个脚本，你需要：

1. 打开 PowerShell 并导航到脚本所在的目录。
2. 运行脚本，传入两个参数：价格下降阈值和检查间隔（秒）。例如：

To use this script, you need to:

1. Open PowerShell and navigate to the directory containing the script.
2. Run the script with two parameters: the price drop threshold and the checking interval (in seconds). For example:

```shell
.\BitDropBeats.ps1 -1.0 60
```

这个命令会设置当比特币价格与一小时之前的价格的变动超过 -1.0%（即下降超过 1%）时触发音乐播放，并且每 60 秒检查一次。

This command will set up music to play when the change in Bitcoin price compared to one hour ago exceeds -1.0% (i.e., drops more than 1%), and it will check every 60 seconds.

## 注意事项 / Notes

确保你的系统允许执行 PowerShell 脚本，并且有权限访问本地音乐文件。

Ensure that your system allows the execution of PowerShell scripts and has permission to access the local music files.
