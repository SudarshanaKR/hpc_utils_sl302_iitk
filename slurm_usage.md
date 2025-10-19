# Slurm Commands Reference

# Submit a job
sbatch submit.sh

# Check job status
squeue -u $USER

# Check all jobs on GPU partition
squeue -p gpu

# Cancel a job
scancel <jobid>

