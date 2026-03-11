# Linux Server Monitor

A Bash-based Linux server monitoring tool that checks important system metrics such as CPU usage, memory usage, disk space and system uptime.

## Features

- Monitor CPU usage
- Monitor memory utilization
- Monitor disk space
- Check system uptime
- Simple Bash script based monitoring
- Easy to automate using cron jobs

## Technologies Used

- Linux
- Bash Scripting
- Cron

## How to Run

1. **Clone the repository**
```bash
git clone https://github.com/rakshitmalik136/linux-server-monitor.git
```

2. **Navigate to the project**
```bash
cd linux-server-monitor
```

3. **Give permission**
```bash
chmod +x monitor.sh
```

4. **Run the script**
```bash
./monitor.sh
```

5. **For Cron Job**
```bash
crontab -e
```
**ADD:** ```bash */5 * * * * /home/user/monitor.sh >> /home/user/health.log```

## Future Improvements

- Email alerts for high resource usage
- Log file generation
- Integration with monitoring tools
