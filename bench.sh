echo "Running naive case: 1 thread"
time python cli.py spec8.py spec8 1 1 ../resourceTypes.yaml ../patientIds.yaml 2020-01-01T00:00:00Z 8080
echo "Running patients in parallel, 16 threads"
time python cli.py spec8.py spec8 16 0 ../resourceTypes.yaml ../patientIds.yaml 2020-01-01T00:00:00Z 8080
echo "Running patients and tasks in parallel, 16 threads" 
time python cli.py spec8.py spec8 16 1 ../resourceTypes.yaml ../patientIds.yaml 2020-01-01T00:00:00Z 8080
