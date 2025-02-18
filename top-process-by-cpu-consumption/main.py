import psutil

processes = [(p.pid, p.info["name"], p.info["cpu_percent"]) for p in psutil.process_iter(attrs=["name", "cpu_percent"])]

top_processes = sorted(processes, key=lambda x: x[2], reverse=True)[:5]

for pid, name, cpu in top_processes:
    print(f"PID: {pid}, Name: {name}, CPU Usage: {cpu}%")
