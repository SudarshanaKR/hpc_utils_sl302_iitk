#Database: optuna-study4-fourier.db
sqlit3 optuna-study4-fourier.db

# List all tables
.tables

# output: 
#alembic_version            trial_params             
#studies                    trial_system_attributes  
#study_directions           trial_user_attributes    
#study_system_attributes    trial_values             
#study_user_attributes      trials                   
#trial_heartbeats           version_info             
#trial_intermediate_values

# Check recent trials
SELECT trial_id, number, state 
FROM trials 
ORDER BY trial_id DESC 
LIMIT 5;

# output:
#8|7|RUNNING
#7|6|COMPLETE
#6|5|RUNNING
#5|4|COMPLETE
#4|3|COMPLETE

# Check recent trial values
SELECT trial_id, value 
FROM trial_values 
ORDER BY trial_id DESC 
LIMIT 5;

# output
#7|1.60018002986908
#5|1.37753105163574
#4|1.6114821434021
#3|1.46698439121246
#2|1.49146914482117

# Get parameters for a specific trial
SELECT param_name, param_value 
FROM trial_params 
WHERE trial_id=5;

# output:
#hidden_dim1|106.0
#hidden_dim2|792.0
#hidden_dim3|225.0
#lr|0.0065303831047425
#n_epochs|52167.0

# Exit SQLite
.quit
