echo "Running naive case: 1 thread"
time python cli.py spec8.py --libraryPath spec8 --nthreads 1 --level 1 ../resourceTypes.yaml ../patientIds.yaml 2020-01-01T00:00:00Z --pdsPort 8080
echo "Running patients in parallel, 16 threads"
time python cli.py spec8.py --libraryPath spec8 --nthreads 16 --level 0 ../resourceTypes.yaml ../patientIds.yaml 2020-01-01T00:00:00Z --pdsPort 8080
echo "Running patients and tasks in parallel, 16 threads" 
time python cli.py spec8.py --libraryPath spec8 --nthreads 16 --level 1 ../resourceTypes.yaml ../patientIds.yaml 2020-01-01T00:00:00Z --pdsPort 8080
