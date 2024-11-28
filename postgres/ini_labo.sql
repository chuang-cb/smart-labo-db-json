CREATE TABLE m_sputter_equipment_recipe (
 sputter_equipment_recipe_name VARCHAR(16) NOT NULL
);

ALTER TABLE m_sputter_equipment_recipe ADD CONSTRAINT PK_m_sputter_equipment_recipe PRIMARY KEY (sputter_equipment_recipe_name);


CREATE TABLE t_project_plan (
 project_id INT NOT NULL,
 project VARCHAR(100),
 project_owner_id INT
);

ALTER TABLE t_project_plan ADD CONSTRAINT PK_t_project_plan PRIMARY KEY (project_id);


CREATE TABLE m_sem_ls (
 ls_id SERIAL NOT NULL,
 ls_name VARCHAR(100) NOT NULL
);

ALTER TABLE m_sem_ls ADD CONSTRAINT PK_m_sem_ls PRIMARY KEY (ls_id);


CREATE TABLE m_sem_image_ng_pattern (
 id SERIAL4 NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_sem_image_ng_pattern ADD CONSTRAINT PK_m_sem_image_ng_pattern PRIMARY KEY (id);

CREATE UNIQUE INDEX UQ1 ON m_sem_image_ng_pattern (option_name);


CREATE TABLE m_wis_equiipment_recipe (
 recipe_name VARCHAR(100) NOT NULL
);

ALTER TABLE m_wis_equiipment_recipe ADD CONSTRAINT PK_m_wis_equiipment_recipe PRIMARY KEY (recipe_name);


CREATE TABLE m_gas (
 gas_id SERIAL NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_gas ADD CONSTRAINT PK_m_gas PRIMARY KEY (gas_id);


CREATE TABLE m_cure_indicated_value (
 cure_indicated_value_id SERIAL8 NOT NULL,
 option_name VARCHAR(100) NOT NULL,
 step_counts INT4 NOT NULL,
 cooling_rate DECIMAL(4,2) NOT NULL
);

ALTER TABLE m_cure_indicated_value ADD CONSTRAINT PK_m_cure_indicated_value PRIMARY KEY (cure_indicated_value_id);


CREATE TABLE m_cl_abnormality (
 cl_abnormality_id SERIAL4 NOT NULL,
 option_name VARCHAR(50) NOT NULL
);

ALTER TABLE m_cl_abnormality ADD CONSTRAINT PK_m_cl_abnormality PRIMARY KEY (cl_abnormality_id);


CREATE TABLE m_cooling_machine_recipe (
 cooling_machine_recipe_name VARCHAR(54) NOT NULL
);

ALTER TABLE m_cooling_machine_recipe ADD CONSTRAINT PK_m_cooling_machine_recipe PRIMARY KEY (cooling_machine_recipe_name);


CREATE TABLE m_coat_step_type (
 coat_step_type_id INT NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_coat_step_type ADD CONSTRAINT PK_m_coat_step_type PRIMARY KEY (coat_step_type_id);


CREATE TABLE m_coat_indicated (
 coat_indicated_id SERIAL8 NOT NULL,
 option_name VARCHAR(100) NOT NULL,
 step_counts INT4 NOT NULL,
 bdc_pressure DECIMAL(8,2)
);

ALTER TABLE m_coat_indicated ADD CONSTRAINT PK_m_coat_indicated PRIMARY KEY (coat_indicated_id);


CREATE TABLE m_sem_size (
 size_id SERIAL NOT NULL,
 size_name VARCHAR(100) NOT NULL
);

ALTER TABLE m_sem_size ADD CONSTRAINT PK_m_sem_size PRIMARY KEY (size_id);


CREATE TABLE m_sem_genre (
 genre_id SERIAL NOT NULL,
 genre_name VARCHAR(100) NOT NULL
);

ALTER TABLE m_sem_genre ADD CONSTRAINT PK_m_sem_genre PRIMARY KEY (genre_id);


CREATE TABLE m_dicing_equipment_recipe (
 name VARCHAR(80) NOT NULL
);

ALTER TABLE m_dicing_equipment_recipe ADD CONSTRAINT PK_m_dicing_equipment_recipe PRIMARY KEY (name);


CREATE TABLE m_chamber_status (
 chamber_status_id SERIAL4 NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_chamber_status ADD CONSTRAINT PK_m_chamber_status PRIMARY KEY (chamber_status_id);


CREATE TABLE m_sem_pattern (
 pattern_id SERIAL NOT NULL,
 pattern_name VARCHAR(100) NOT NULL
);

ALTER TABLE m_sem_pattern ADD CONSTRAINT PK_m_sem_pattern PRIMARY KEY (pattern_id);


CREATE TABLE m_plate_unit (
 plate_unit_id INT NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_plate_unit ADD CONSTRAINT PK_m_plate_unit PRIMARY KEY (plate_unit_id);


CREATE TABLE m_processes (
 process_id SERIAL NOT NULL,
 process_name VARCHAR(10) NOT NULL,
 process_detail VARCHAR(20),
 is_send_mail_on_ready BOOLEAN NOT NULL,
 is_send_mail_on_complete BOOLEAN NOT NULL,
 is_transition_film_state BOOLEAN NOT NULL,
 is_transition_varnish_state BOOLEAN NOT NULL,
 is_branching BOOLEAN NOT NULL,
 is_only_in_process_pattern BOOLEAN NOT NULL,
 next_required_process INT
);

ALTER TABLE m_processes ADD CONSTRAINT PK_m_processes PRIMARY KEY (process_id);


CREATE TABLE m_bake_indicated (
 bake_indicated_id SERIAL8 NOT NULL,
 option_name VARCHAR(100) NOT NULL,
 plate_count INT4 NOT NULL
);

ALTER TABLE m_bake_indicated ADD CONSTRAINT PK_m_bake_indicated PRIMARY KEY (bake_indicated_id);


CREATE TABLE m_sem_position_no (
 position_no INT NOT NULL,
 position_name VARCHAR(100) NOT NULL,
 genre_id INT,
 ls_id INT,
 size_id INT,
 pattern_id INT
);

ALTER TABLE m_sem_position_no ADD CONSTRAINT PK_m_sem_position_no PRIMARY KEY (position_no);


CREATE TABLE m_pump_recipe (
 id VARCHAR(54) NOT NULL
);

ALTER TABLE m_pump_recipe ADD CONSTRAINT PK_m_pump_recipe PRIMARY KEY (id);


CREATE TABLE マスタ_ユーザー (
 ユーザーID SERIAL NOT NULL,
 ユーザー名 VARCHAR(100) NOT NULL
);

ALTER TABLE マスタ_ユーザー ADD CONSTRAINT PK_マスタ_ユーザー PRIMARY KEY (ユーザーID);


CREATE TABLE m_reticle (
 reticle_id SERIAL NOT NULL,
 reticle_name VARCHAR(100) NOT NULL
);

ALTER TABLE m_reticle ADD CONSTRAINT PK_m_reticle PRIMARY KEY (reticle_id);


CREATE TABLE m_reticle_pattern (
 reticle_pattern_id SERIAL NOT NULL,
 reticle_pattern_name VARCHAR(100) NOT NULL,
 reticle_id INT NOT NULL
);

ALTER TABLE m_reticle_pattern ADD CONSTRAINT PK_m_reticle_pattern PRIMARY KEY (reticle_pattern_id);


CREATE TABLE m_substrates (
 substrate_id SERIAL NOT NULL,
 substrate_name VARCHAR(50) NOT NULL
);

ALTER TABLE m_substrates ADD CONSTRAINT PK_m_substrates PRIMARY KEY (substrate_id);


CREATE TABLE m_coat_dev_arm_type (
 coat_arm_type_id INT NOT NULL,
 option_name VARCHAR(100) NOT NULL
);

ALTER TABLE m_coat_dev_arm_type ADD CONSTRAINT PK_m_coat_dev_arm_type PRIMARY KEY (coat_arm_type_id);


CREATE TABLE m_coat_dev_position_type (
 coat_position_type_id INT NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_coat_dev_position_type ADD CONSTRAINT PK_m_coat_dev_position_type PRIMARY KEY (coat_position_type_id);


CREATE TABLE m_coat_dev_scan (
 coat_scan_id INT NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_coat_dev_scan ADD CONSTRAINT PK_m_coat_dev_scan PRIMARY KEY (coat_scan_id);


CREATE TABLE m_coat_dev_dispense (
 coat_dispense_id INT NOT NULL,
 option_name VARCHAR(50) NOT NULL
);

ALTER TABLE m_coat_dev_dispense ADD CONSTRAINT PK_m_coat_dev_dispense PRIMARY KEY (coat_dispense_id);


CREATE TABLE m_coat_dev_operating_mode (
 coat_operating_mode_id INT NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_coat_dev_operating_mode ADD CONSTRAINT PK_m_coat_dev_operating_mode PRIMARY KEY (coat_operating_mode_id);


CREATE TABLE m_imaging_type (
 id SERIAL NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_imaging_type ADD CONSTRAINT PK_m_imaging_type PRIMARY KEY (id);


CREATE TABLE m_development_step_type (
 development_step_id INT NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_development_step_type ADD CONSTRAINT PK_m_development_step_type PRIMARY KEY (development_step_id);


CREATE TABLE m_development_indicated (
 development_indicated_id SERIAL8 NOT NULL,
 option_name VARCHAR(100) NOT NULL,
 step_counts INT4 NOT NULL
);

ALTER TABLE m_development_indicated ADD CONSTRAINT PK_m_development_indicated PRIMARY KEY (development_indicated_id);


CREATE TABLE m_equipment_makers (
 equipment_maker_id SERIAL NOT NULL,
 equipment_maker VARCHAR(50)
);

ALTER TABLE m_equipment_makers ADD CONSTRAINT PK_m_equipment_makers PRIMARY KEY (equipment_maker_id);


CREATE TABLE m_angle (
 観察角度ID INT NOT NULL,
 option_name VARCHAR(20) NOT NULL
);

ALTER TABLE m_angle ADD CONSTRAINT PK_m_angle PRIMARY KEY (観察角度ID);


CREATE TABLE m_exposure_map (
 exposure_maps_id SERIAL4 NOT NULL,
 option_name VARCHAR(20) NOT NULL,
 exposure_step INT4 NOT NULL,
 focus_step INT4 NOT NULL
);

ALTER TABLE m_exposure_map ADD CONSTRAINT PK_m_exposure_map PRIMARY KEY (exposure_maps_id);

CREATE UNIQUE INDEX UQ2 ON m_exposure_map (option_name);


CREATE TABLE m_exposure_line (
 id SERIAL4 NOT NULL,
 option_name VARCHAR(10) NOT NULL
);

ALTER TABLE m_exposure_line ADD CONSTRAINT PK_m_exposure_line PRIMARY KEY (id);

CREATE TABLE bottles (
 bottle_id VARCHAR(20) NOT NULL,
 printed_qr VARCHAR(20) NOT NULL,
 printed_text VARCHAR(20) NOT NULL
);

ALTER TABLE bottles ADD CONSTRAINT PK_bottles PRIMARY KEY (bottle_id);

CREATE UNIQUE INDEX UQ3 ON bottles (printed_qr);
CREATE UNIQUE INDEX UQ4 ON bottles (printed_text);


CREATE TABLE t_thema_plan (
 thema_id INT NOT NULL,
 project_id INT NOT NULL
);

ALTER TABLE t_thema_plan ADD CONSTRAINT PK_t_thema_plan PRIMARY KEY (thema_id);


CREATE TABLE varnishes (
 varnish_id SERIAL NOT NULL,
 varnish_identifier VARCHAR(10) NOT NULL,
 varnish_name VARCHAR(30) NOT NULL
);

ALTER TABLE varnishes ADD CONSTRAINT PK_varnishes PRIMARY KEY (varnish_id);

CREATE UNIQUE INDEX UQ5 ON varnishes (varnish_identifier);

CREATE TABLE t_run_plan (
 run_id INT NOT NULL,
 thema_id INT NOT NULL,
 optimization_count INT NOT NULL,
 is_priority BOOLEAN NOT NULL
);

ALTER TABLE t_run_plan ADD CONSTRAINT PK_t_run_plan PRIMARY KEY (run_id);


CREATE TABLE t_process_pattern_group_plan (
 run_id INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE t_process_pattern_group_plan ADD CONSTRAINT PK_t_process_pattern_group_plan PRIMARY KEY (run_id,process_pattern_group_index);


CREATE TABLE m_sem_imaging_group (
 sem_imaging_group_id SERIAL8 NOT NULL,
 option_name VARCHAR(100) NOT NULL,
 exposure_map_id INT NOT NULL
);

ALTER TABLE m_sem_imaging_group ADD CONSTRAINT PK_m_sem_imaging_group PRIMARY KEY (sem_imaging_group_id);


CREATE TABLE m_sem_imaging_position_shot_no (
 imaging_position_id INT NOT NULL,
 shot_no INT NOT NULL
);

ALTER TABLE m_sem_imaging_position_shot_no ADD CONSTRAINT PK_m_sem_imaging_position_shot_no PRIMARY KEY (imaging_position_id,shot_no);


CREATE TABLE m_sem_imaging_position_no (
 imaging_position_id INT NOT NULL,
 position_no INT NOT NULL,
 reticle_pattern_id INT NOT NULL
);

ALTER TABLE m_sem_imaging_position_no ADD CONSTRAINT PK_m_sem_imaging_position_no PRIMARY KEY (imaging_position_id,position_no);


CREATE TABLE m_sem_machine_recipe_data (
 sem_machine_recipe_data_name VARCHAR(81) NOT NULL,
 acceleration_voltage DECIMAL(8,2) NOT NULL,
 magnification INT NOT NULL,
 observation_angle_id INT NOT NULL,
 working_distance DECIMAL(8,2) NOT NULL,
 exposure_map_id INT NOT NULL
);

ALTER TABLE m_sem_machine_recipe_data ADD CONSTRAINT PK_m_sem_machine_recipe_data PRIMARY KEY (sem_machine_recipe_data_name);


CREATE TABLE m_cure_step_indicated (
 cure_indicated_value_id INT NOT NULL,
 step_no INT4 NOT NULL,
 target_temperature INT4 NOT NULL,
 retention_time INT4 NOT NULL,
 heating_rate DECIMAL(4,2) NOT NULL,
 pressure DECIMAL(4,3) NOT NULL,
 gas_flow_rate INT4 NOT NULL,
 gas_target_temperature INT4 NOT NULL,
 gas_temperature_adjustment_value INT4 NOT NULL
);

ALTER TABLE m_cure_step_indicated ADD CONSTRAINT PK_m_cure_step_indicated PRIMARY KEY (cure_indicated_value_id,step_no);


CREATE TABLE m_coat_step_indicated (
 coat_indicated_id INT NOT NULL,
 step_no INT4 NOT NULL,
 processing_time DECIMAL(8,2) NOT NULL,
 spin_coating_speed INT NOT NULL,
 spin_coating_acceleration DECIMAL(8,2) NOT NULL,
 coat_step_id INT
);

ALTER TABLE m_coat_step_indicated ADD CONSTRAINT PK_m_coat_step_indicated PRIMARY KEY (coat_indicated_id,step_no);


CREATE TABLE m_coat_dispense_indicated (
 coat_indicated_id INT NOT NULL,
 step_no INT4 NOT NULL,
 dispense_id INT NOT NULL,
 pump_recipe_id VARCHAR(54) NOT NULL
);

ALTER TABLE m_coat_dispense_indicated ADD CONSTRAINT PK_m_coat_dispense_indicated PRIMARY KEY (coat_indicated_id,step_no,dispense_id);


CREATE TABLE m_bake_plate_indicated (
 bake_recipe_id INT NOT NULL,
 plate_no INT4 NOT NULL,
 unit_id INT,
 main_temperature INT4 NOT NULL,
 exhaust_heater_temperature INT4 NOT NULL
);

ALTER TABLE m_bake_plate_indicated ADD CONSTRAINT PK_m_bake_plate_indicated PRIMARY KEY (bake_recipe_id,plate_no);


CREATE TABLE m_development_step_indicated (
 development_indicated_id INT NOT NULL,
 step_no INT4 NOT NULL,
 processing_time DECIMAL(8,2) NOT NULL,
 development_speed INT NOT NULL,
 development_acceleration DECIMAL(8,2) NOT NULL,
 development_step_id INT
);

ALTER TABLE m_development_step_indicated ADD CONSTRAINT PK_m_development_step_indicated PRIMARY KEY (development_indicated_id,step_no);


CREATE TABLE m_development_dispense_indicated (
 development_indicated_id INT NOT NULL,
 step_no INT4 NOT NULL,
 dispense_id INT NOT NULL,
 pump_recipe_id VARCHAR(54) NOT NULL
);

ALTER TABLE m_development_dispense_indicated ADD CONSTRAINT PK_m_development_dispense_indicated PRIMARY KEY (development_indicated_id,step_no,dispense_id);


CREATE TABLE m_thickness_position_recipe (
 thickness_position_recipe_id SERIAL8 NOT NULL,
 option_name VARCHAR(50) NOT NULL,
 exposure_map_id INT
);

ALTER TABLE m_thickness_position_recipe ADD CONSTRAINT PK_m_thickness_position_recipe PRIMARY KEY (thickness_position_recipe_id);

CREATE UNIQUE INDEX UQ6 ON m_thickness_position_recipe (option_name);


CREATE TABLE m_equipment (
 equipment_id SERIAL NOT NULL,
 equipment_calling_name VARCHAR(50) NOT NULL,
 product_number VARCHAR(50),
 equipment_maker_id INT,
 group_id INT
);

ALTER TABLE m_equipment ADD CONSTRAINT PK_m_equipment PRIMARY KEY (equipment_id);


CREATE TABLE m_exposure_equipment_focus (
 equipment_id SERIAL NOT NULL,
 is_forward_direction BOOLEAN NOT NULL
);

ALTER TABLE m_exposure_equipment_focus ADD CONSTRAINT PK_m_exposure_equipment_focus PRIMARY KEY (equipment_id);


CREATE TABLE m_shot_position_relations (
 shot_position_relations_id SERIAL8 NOT NULL,
 measurement_position_recipe_id INT NOT NULL,
 exposure_shot_no INT4,
 measurement_position_no INT4 NOT NULL
);

ALTER TABLE m_shot_position_relations ADD CONSTRAINT PK_m_shot_position_relations PRIMARY KEY (shot_position_relations_id);

CREATE UNIQUE INDEX UQ7 ON m_shot_position_relations (measurement_position_recipe_id,exposure_shot_no,measurement_position_no);


CREATE TABLE varnish_state_history (
 varnish_history_id SERIAL NOT NULL,
 bottle_id VARCHAR(20),
 start_at TIMESTAMP NOT NULL,
 end_at TIMESTAMP,
 pre_filtration_bottle_id VARCHAR(20)
);

ALTER TABLE varnish_state_history ADD CONSTRAINT PK_varnish_state_history PRIMARY KEY (varnish_history_id);


CREATE TABLE m_thickness_equipment_recipe (
 thickness_equipment_recipe_name VARCHAR(80) NOT NULL,
 refractive_index DECIMAL(10) NOT NULL,
 substrate_id INT NOT NULL,
 measurement_position_recipe_id INT NOT NULL
);

ALTER TABLE m_thickness_equipment_recipe ADD CONSTRAINT PK_m_thickness_equipment_recipe PRIMARY KEY (thickness_equipment_recipe_name);


CREATE TABLE t_process_pattern_plan (
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_pattern_group_index INT NOT NULL,
 is_unavailable_reclain_wafer BOOLEAN NOT NULL
);

ALTER TABLE t_process_pattern_plan ADD CONSTRAINT PK_t_process_pattern_plan PRIMARY KEY (process_pattern_index,run_id,process_pattern_group_index);


CREATE TABLE m_coat_arm_indicated (
 coat_indicated_id INT NOT NULL,
 arm_id INT NOT NULL,
 step_no INT4 NOT NULL,
 operating_id INT NOT NULL,
 scan_id INT NOT NULL,
 io_speed DECIMAL(8,2) NOT NULL,
  io_acceleration DECIMAL(8,2) NOT NULL,
  io_deceleration DECIMAL(8,2) NOT NULL,
 updown_speed DECIMAL(8,2) NOT NULL,
 updown_acceleration DECIMAL(8,2) NOT NULL,
  updown_deceleration DECIMAL(8,2) NOT NULL,
 target_position_type_id INT NOT NULL,
 target_position_x_offset DECIMAL(8,2) NOT NULL,
 target_position_y_offset DECIMAL(8,2) NOT NULL,
 target_position_height DECIMAL(8,2) NOT NULL,
 scan_position_type_id INT NOT NULL,
 scan_position_x_offset DECIMAL(8,2) NOT NULL,
 scan_position_y_offset DECIMAL(8,2) NOT NULL,
 scan_position_height DECIMAL(8,2) NOT NULL,
 cut_width DECIMAL(8,2) NOT NULL
);

ALTER TABLE m_coat_arm_indicated ADD CONSTRAINT PK_m_coat_arm_indicated PRIMARY KEY (coat_indicated_id,arm_id,step_no);


CREATE TABLE m_bake_step_indicated (
 bake_recipe_id INT NOT NULL,
 plate_no INT4 NOT NULL,
 step_no INT4 NOT NULL,
 time INT4 NOT NULL,
 pin_height DECIMAL(8,2) NOT NULL,
 chamber_status_id INT NOT NULL
);

ALTER TABLE m_bake_step_indicated ADD CONSTRAINT PK_m_bake_step_indicated PRIMARY KEY (bake_recipe_id,plate_no,step_no);


CREATE TABLE m_development_arm_indicated (
 development_indicated_id INT NOT NULL,
 step_no INT4 NOT NULL,
 arm_id INT NOT NULL,
 operating_mode_id INT NOT NULL,
 scan_id INT NOT NULL,
 io_speed DECIMAL(8,2) NOT NULL,
 io_acceleration DECIMAL(8,2) NOT NULL,
 io_deceleration DECIMAL(8,2) NOT NULL,
 updown_speed DECIMAL(8,2) NOT NULL,
 updown_acceleration DECIMAL(8,2) NOT NULL,
 updown_deceleration DECIMAL(8,2) NOT NULL,
 target_position_type_id INT NOT NULL,
 target_position_x_offset DECIMAL(8,2) NOT NULL,
 target_position_y_offset DECIMAL(8,2) NOT NULL,
 target_position_height DECIMAL(8,2) NOT NULL,
 scan_position_type_id INT NOT NULL,
 scan_position_x_offset DECIMAL(8,2) NOT NULL,
 scan_position_y_offset DECIMAL(8,2) NOT NULL,
 scan_position_height DECIMAL(8,2) NOT NULL,
 cut_width DECIMAL(8,2) NOT NULL
);

ALTER TABLE m_development_arm_indicated ADD CONSTRAINT PK_m_development_arm_indicated PRIMARY KEY (development_indicated_id,step_no,arm_id);


CREATE TABLE process_result (
 process_result_id SERIAL NOT NULL,
 process_index INT NOT NULL,
 major_version INT NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_pattern_group_index INT NOT NULL,
 process_id INT NOT NULL,
 result_start_at TIMESTAMP,
 result_end_at TIMESTAMP,
 wafer_id INT,
 is_unplaned BOOLEAN NOT NULL,
 substrate_id INT NOT NULL
);

ALTER TABLE process_result ADD CONSTRAINT PK_process_result PRIMARY KEY (process_result_id);

CREATE UNIQUE INDEX UQ8 ON process_result (process_index,major_version,process_pattern_group_index,run_id,process_pattern_index);


CREATE TABLE t_process_plan (
 process_index INT NOT NULL,
 process_pattern_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL,
 run_id INT NOT NULL,
 is_send_mail_on_ready BOOLEAN NOT NULL,
 is_send_mail_on_complete BOOLEAN NOT NULL
);

ALTER TABLE t_process_plan ADD CONSTRAINT PK_t_process_plan PRIMARY KEY (process_index,process_pattern_index,process_pattern_group_index,run_id);

CREATE UNIQUE INDEX UQ9 ON t_process_plan (process_index);


CREATE TABLE bake_result (
 bake_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE bake_result ADD CONSTRAINT PK_bake_result PRIMARY KEY (bake_result_id);


CREATE TABLE bake_plan (
 bke_plan_id SERIAL8 NOT NULL,
 bake_indicated_id INT NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE bake_plan ADD CONSTRAINT PK_bake_plan PRIMARY KEY (bke_plan_id);


CREATE TABLE bake_plan_modify (
 bake_result_id INT NOT NULL,
 equipment_id SERIAL NOT NULL,
 bake_recipe_id INT NOT NULL
);

ALTER TABLE bake_plan_modify ADD CONSTRAINT PK_bake_plan_modify PRIMARY KEY (bake_result_id);


CREATE TABLE bake_plan_machine (
 bke_plan_id INT NOT NULL,
 equipment_id SERIAL NOT NULL
);

ALTER TABLE bake_plan_machine ADD CONSTRAINT PK_bake_plan_machine PRIMARY KEY (bke_plan_id,equipment_id);


CREATE TABLE coat_result (
 coat_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 varnish_id INT4 NOT NULL,
 bottle_id VARCHAR(20) NOT NULL,
 varnish_history_id INT NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE coat_result ADD CONSTRAINT PK_coat_result PRIMARY KEY (coat_result_id);


CREATE TABLE coat_plan (
 coat_plan_id SERIAL8 NOT NULL,
 varnish_id INT NOT NULL,
 coat_recipe_id INT NOT NULL,
 calculation_process_index INT,
 actual_spin_coat_speed INT,
 viscosity_predicted_value DECIMAL(8,2),
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE coat_plan ADD CONSTRAINT PK_coat_plan PRIMARY KEY (coat_plan_id);


CREATE TABLE coat_plan_modify (
 coat_result_id INT NOT NULL,
 equipment_id SERIAL NOT NULL,
 coat_recipe_id INT NOT NULL,
 calculation_process_index INT,
 actual_spin_coat_speed INT,
 viscosity_predicted_value DECIMAL(8,2)
);

ALTER TABLE coat_plan_modify ADD CONSTRAINT PK_coat_plan_modify PRIMARY KEY (coat_result_id);


CREATE TABLE coat_plan_equipment (
 coat_plan_id INT NOT NULL,
 equipment_id SERIAL NOT NULL
);

ALTER TABLE coat_plan_equipment ADD CONSTRAINT PK_coat_plan_equipment PRIMARY KEY (coat_plan_id,equipment_id);


CREATE TABLE development_result (
 development_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE development_result ADD CONSTRAINT PK_development_result PRIMARY KEY (development_result_id);


CREATE TABLE development_plan (
 development_plan_id SERIAL8 NOT NULL,
 development_recipe_id INT NOT NULL,
 calculation_process_index INT,
 main_step_processing_time DECIMAL(8,2),
 is_production BOOLEAN NOT NULL,
 mdt_magnification DECIMAL(5,3),
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE development_plan ADD CONSTRAINT PK_development_plan PRIMARY KEY (development_plan_id);


CREATE TABLE development_plan_modify (
 development_result_id INT NOT NULL,
 equipment_id SERIAL NOT NULL,
 development_indicated_id INT NOT NULL,
 calculation_process_index INT,
 main_step_processing_time DECIMAL(8,2),
 is_production BOOLEAN NOT NULL,
 mdt_magnification DECIMAL(5,3)
);

ALTER TABLE development_plan_modify ADD CONSTRAINT PK_development_plan_modify PRIMARY KEY (development_result_id);


CREATE TABLE development_plan_equipment (
 development_plan_id INT NOT NULL,
 equipment_id SERIAL NOT NULL
);

ALTER TABLE development_plan_equipment ADD CONSTRAINT PK_development_plan_equipment PRIMARY KEY (development_plan_id,equipment_id);


CREATE TABLE development_time_calculation_result (
 development_time_calculation_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 calculation_result DECIMAL(8,2) NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE development_time_calculation_result ADD CONSTRAINT PK_development_time_calculation_result PRIMARY KEY (development_time_calculation_result_id);


CREATE TABLE development_time_calculation_plan (
 development_time_calculation_plan_id SERIAL8 NOT NULL,
 step_time INT,
 preconditions_process_pattern_index INT,
 conditions_development_process_pattern_index INT NOT NULL,
 conditions_wis_process_pattern_index INT NOT NULL,
 is_final_step BOOLEAN NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE development_time_calculation_plan ADD CONSTRAINT PK_development_time_calculation_plan PRIMARY KEY (development_time_calculation_plan_id);


CREATE TABLE development_time_calculation_plan_modify (
 development_time_calculation_result_id INT NOT NULL,
 step_time INT,
 preconditions_process_pattern_index INT,
 conditions_development_process_pattern_index INT NOT NULL,
 conditions_wis_process_pattern_index INT NOT NULL,
 is_final_step BOOLEAN NOT NULL
);

ALTER TABLE development_time_calculation_plan_modify ADD CONSTRAINT PK_development_time_calculation_plan_modify PRIMARY KEY (development_time_calculation_result_id);


CREATE TABLE thickness_result (
 thickness_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE thickness_result ADD CONSTRAINT PK_thickness_result PRIMARY KEY (thickness_result_id);


CREATE TABLE thickness_plan (
 thickness_plan_id SERIAL8 NOT NULL,
 remaining_film_process_index INT,
 equipment_recipe_name VARCHAR(80) NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE thickness_plan ADD CONSTRAINT PK_thickness_plan PRIMARY KEY (thickness_plan_id);


CREATE TABLE thickness_plan_modify (
 thickness_result_id INT NOT NULL,
 equipment_id SERIAL NOT NULL,
 remaining_film_process_index INT,
 thickness_equipment_recipe_name VARCHAR(80) NOT NULL
);

ALTER TABLE thickness_plan_modify ADD CONSTRAINT PK_thickness_plan_modify PRIMARY KEY (thickness_result_id);


CREATE TABLE thickness_plan_equipment (
 thickness_plan_id INT NOT NULL,
 equipment_id SERIAL NOT NULL
);

ALTER TABLE thickness_plan_equipment ADD CONSTRAINT PK_thickness_plan_equipment PRIMARY KEY (thickness_plan_id,equipment_id);


CREATE TABLE exposure_result (
 exposure_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 process_result_id SERIAL
);

ALTER TABLE exposure_result ADD CONSTRAINT PK_exposure_result PRIMARY KEY (exposure_result_id);


CREATE TABLE exposure_plan (
 exposure_plan_id SERIAL8 NOT NULL,
 id INT NOT NULL,
 exposure_maps_id INT NOT NULL,
 exposure_center DECIMAL(8,2) NOT NULL,
 exposure_step DECIMAL(8,2) NOT NULL,
 focus_center DECIMAL(8,2) NOT NULL,
 focus_step DECIMAL(8,2) NOT NULL,
 numerical_aperture DECIMAL(8,2),
 sigma DECIMAL(8,2),
 reticle_id INT NOT NULL,
 reticle_pattern_id INT NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE exposure_plan ADD CONSTRAINT PK_exposure_plan PRIMARY KEY (exposure_plan_id);


CREATE TABLE exposure_plan_equipment (
 equipment_id SERIAL NOT NULL,
 exposure_plan_id INT NOT NULL
);

ALTER TABLE exposure_plan_equipment ADD CONSTRAINT PK_exposure_plan_equipment PRIMARY KEY (equipment_id,exposure_plan_id);


CREATE TABLE sem_result (
 sem_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE sem_result ADD CONSTRAINT PK_sem_result PRIMARY KEY (sem_result_id);


CREATE TABLE sem_plan (
 sem_plan_id SERIAL8 NOT NULL,
 imaging_position_id INT,
 equipment_recipe_name VARCHAR(81) NOT NULL,
 image_judgment_process_index INT,
 imaging_type_id INT,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE sem_plan ADD CONSTRAINT PK_sem_plan PRIMARY KEY (sem_plan_id);


CREATE TABLE sem_plan_modify (
 sem_result_id INT NOT NULL,
 equipment_id INT4 NOT NULL,
 equipment_recipe_name VARCHAR(81) NOT NULL,
 imaging_position_id INT8,
 optimal_shot_no INT,
 position_no INT,
 imaging_type_id INT4
);

ALTER TABLE sem_plan_modify ADD CONSTRAINT PK_sem_plan_modify PRIMARY KEY (sem_result_id);


CREATE TABLE sem_plan_equipment (
 sem_plan_id INT NOT NULL,
 equipment_id SERIAL NOT NULL
);

ALTER TABLE sem_plan_equipment ADD CONSTRAINT PK_sem_plan_equipment PRIMARY KEY (sem_plan_id,equipment_id);


CREATE TABLE sem_image_manual_judgment_result (
 manual_judgment_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 optimal_shot_no INT NOT NULL,
 fib_reference_point INT NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE sem_image_manual_judgment_result ADD CONSTRAINT PK_sem_image_manual_judgment_result PRIMARY KEY (manual_judgment_result_id);


CREATE TABLE sem_image_manual_judgment_plan (
 manual_judgment_plan_id SERIAL8 NOT NULL,
 varnish_id INT NOT NULL,
 is_before_fib BOOLEAN NOT NULL,
 sem_process_index INT NOT NULL,
 t3_process_index INT NOT NULL,
 t4_process_index INT NOT NULL,
 sputter_process_index INT,
 residual_film_threshold DECIMAL(8,2) NOT NULL,
 automatic_image_judgment_process_index INT,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE sem_image_manual_judgment_plan ADD CONSTRAINT PK_sem_image_manual_judgment_plan PRIMARY KEY (manual_judgment_plan_id);


CREATE TABLE sem_image_manual_judgment_plan_modify (
 manual_judgment_result_id INT NOT NULL,
 composition_id INT NOT NULL,
 is_before_fib BOOLEAN NOT NULL,
 sem_process_index INT NOT NULL,
 t3_process_index INT NOT NULL,
 t4_process_index INT NOT NULL,
 sputter_process_index INT,
 residual_film_threshold DECIMAL(8,2) NOT NULL,
 自動画像判定プロセスIndex INT
);

ALTER TABLE sem_image_manual_judgment_plan_modify ADD CONSTRAINT PK_sem_image_manual_judgment_plan_modify PRIMARY KEY (manual_judgment_result_id);


CREATE TABLE sem_image_auto_judgment_result (
 auto_judgment_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 optimal_shot_no INT NOT NULL,
 fib_reference_point INT NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE sem_image_auto_judgment_result ADD CONSTRAINT PK_sem_image_auto_judgment_result PRIMARY KEY (auto_judgment_result_id);


CREATE TABLE sem_image_auto_judgment_plan (
 auto_judgment_plan_id SERIAL8 NOT NULL,
 varnish_id INT NOT NULL,
 is_before_fib BOOLEAN NOT NULL,
 sem_process_index INT NOT NULL,
 t4_process_index INT NOT NULL,
 t3_process_index INT NOT NULL,
 sputter_process_index INT,
 residual_film_threshold DECIMAL(8,2) NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE sem_image_auto_judgment_plan ADD CONSTRAINT PK_sem_image_auto_judgment_plan PRIMARY KEY (auto_judgment_plan_id);


CREATE TABLE sem_image_autol_judgment_plan_modify (
 auto_judgment_result_id INT NOT NULL,
 組成ID INT NOT NULL,
 FIB前かどうか BOOLEAN NOT NULL,
 SEMプロセスIndex INT NOT NULL,
 現像後膜厚プロセスIndex INT NOT NULL,
 キュア後膜厚プロセスIndex INT NOT NULL,
 スパッタプロセスIndex INT,
 現像残膜率閾値 DECIMAL(10) NOT NULL
);

ALTER TABLE sem_image_autol_judgment_plan_modify ADD CONSTRAINT PK_sem_image_autol_judgment_plan_modify PRIMARY KEY (auto_judgment_result_id);


CREATE TABLE wis_result (
 wis_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 process_result_id INT
);

ALTER TABLE wis_result ADD CONSTRAINT PK_wis_result PRIMARY KEY (wis_result_id);


CREATE TABLE wis_plan (
 wis_plan_id SERIAL8 NOT NULL,
 equipment_recipe_name VARCHAR(100) NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE wis_plan ADD CONSTRAINT PK_wis_plan PRIMARY KEY (wis_plan_id);


CREATE TABLE wis_plan_modify (
 wis_result_id SERIAL8 NOT NULL,
 equipment_id SERIAL NOT NULL,
 recipe_name VARCHAR(100) NOT NULL
);

ALTER TABLE wis_plan_modify ADD CONSTRAINT PK_wis_plan_modify PRIMARY KEY (wis_result_id);


CREATE TABLE wis_plan_equipment (
 wis_plan_id SERIAL8 NOT NULL,
 equipment_id SERIAL NOT NULL
);

ALTER TABLE wis_plan_equipment ADD CONSTRAINT PK_wis_plan_equipment PRIMARY KEY (wis_plan_id,equipment_id);

CREATE UNIQUE INDEX UQ10 ON wis_plan_equipment (wis_plan_id,equipment_id);


CREATE TABLE cure_result (
 cure_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE cure_result ADD CONSTRAINT PK_cure_result PRIMARY KEY (cure_result_id);


CREATE TABLE cure_plan (
 cure_plan_id SERIAL8 NOT NULL,
 run_id INT NOT NULL,
 process_pattern_group_index INT NOT NULL,
 process_pattern_index INT NOT NULL,
 process_index INT NOT NULL,
 is_stand_alone BOOLEAN NOT NULL,
 cure_recipe_id INT NOT NULL
);

ALTER TABLE cure_plan ADD CONSTRAINT PK_cure_plan PRIMARY KEY (cure_plan_id);


CREATE TABLE cure_plan_modify (
 cure_result_id SERIAL8 NOT NULL,
 equipment_id SERIAL NOT NULL,
 cure_indicated_value_id INT NOT NULL,
 is_stand_alone BOOLEAN NOT NULL
);

ALTER TABLE cure_plan_modify ADD CONSTRAINT PK_cure_plan_modify PRIMARY KEY (cure_result_id);


CREATE TABLE cure_plan_equipment (
 cure_plan_id SERIAL8 NOT NULL,
 equipment_id SERIAL NOT NULL
);

ALTER TABLE cure_plan_equipment ADD CONSTRAINT PK_cure_plan_equipment PRIMARY KEY (cure_plan_id,equipment_id);


CREATE TABLE cooling_result (
 cooling_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE cooling_result ADD CONSTRAINT PK_cooling_result PRIMARY KEY (cooling_result_id);


CREATE TABLE cooling_plan (
 cooling_plan_id SERIAL8 NOT NULL,
 equipment_recipe_name VARCHAR(54) NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE cooling_plan ADD CONSTRAINT PK_cooling_plan PRIMARY KEY (cooling_plan_id);


CREATE TABLE cooling_plan_modify (
 cooling_result_id SERIAL8 NOT NULL,
 equipment_id SERIAL NOT NULL,
 cooling_machine_recipe_name VARCHAR(54) NOT NULL
);

ALTER TABLE cooling_plan_modify ADD CONSTRAINT PK_cooling_plan_modify PRIMARY KEY (cooling_result_id);


CREATE TABLE cooling_plan_equipment (
 cooling_plan_id SERIAL8 NOT NULL,
 equipment_id SERIAL NOT NULL
);

ALTER TABLE cooling_plan_equipment ADD CONSTRAINT PK_cooling_plan_equipment PRIMARY KEY (cooling_plan_id,equipment_id);


CREATE TABLE coat_calculation_result (
 coat_calculation_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 spin_coating1 INT NOT NULL,
 spin_coating2 INT NOT NULL,
 film_thickness1 DECIMAL(8,2) NOT NULL,
 film_thickness2 DECIMAL(8,2) NOT NULL,
 spin_coating_result INT NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE coat_calculation_result ADD CONSTRAINT PK_coat_calculation_result PRIMARY KEY (coat_calculation_result_id);


CREATE TABLE coat_calculation_plan (
 coat_calculation_plan_id SERIAL8 NOT NULL,
  target_thickness1 DECIMAL(8,2) NOT NULL,
 process_pattern_index1 INT NOT NULL,
 process_pattern_index2 INT NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE coat_calculation_plan ADD CONSTRAINT PK_coat_calculation_plan PRIMARY KEY (coat_calculation_plan_id);


CREATE TABLE coat_calculation_plan_modify (
 coat_calculation_result_id INT NOT NULL,
 target_thickness1 DECIMAL(8,2) NOT NULL,
 process_pattern_index1 INT NOT NULL,
 process_pattern_index2 INT NOT NULL
);

ALTER TABLE coat_calculation_plan_modify ADD CONSTRAINT PK_coat_calculation_plan_modify PRIMARY KEY (coat_calculation_result_id);


CREATE TABLE coat_indicated_modify (
 coat_result_id INT NOT NULL,
 coat_recipe_name VARCHAR(100) NOT NULL,
 step_count INT4 NOT NULL,
 bdc_pressure DECIMAL(8,2)
);

ALTER TABLE coat_indicated_modify ADD CONSTRAINT PK_coat_indicated_modify PRIMARY KEY (coat_result_id);


CREATE TABLE sputter_result (
 sputter_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE sputter_result ADD CONSTRAINT PK_sputter_result PRIMARY KEY (sputter_result_id);


CREATE TABLE sputter_plan (
 sputter_plan_id INT8 NOT NULL,
 equipment_recipe_name VARCHAR(16) NOT NULL,
 substrate_id INT NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE sputter_plan ADD CONSTRAINT PK_sputter_plan PRIMARY KEY (sputter_plan_id);


CREATE TABLE sputter_plan_modify (
 sputter_result_id INT NOT NULL,
 equipment_id SERIAL NOT NULL,
 sputter_equipment_recipe_name VARCHAR(16) NOT NULL,
 substrate_id INT
);

ALTER TABLE sputter_plan_modify ADD CONSTRAINT PK_sputter_plan_modify PRIMARY KEY (sputter_result_id);


CREATE TABLE sputter_plan_equipment (
 sputter_plan_id INT8 NOT NULL,
 equipment_id SERIAL NOT NULL
);

ALTER TABLE sputter_plan_equipment ADD CONSTRAINT PK_sputter_plan_equipment PRIMARY KEY (sputter_plan_id,equipment_id);


CREATE TABLE dicing_result (
 dicing_result_id SERIAL8 NOT NULL,
 is_success BOOLEAN NOT NULL,
 result_abnormality_id SERIAL4 NOT NULL,
 process_result_id SERIAL NOT NULL
);

ALTER TABLE dicing_result ADD CONSTRAINT PK_dicing_result PRIMARY KEY (dicing_result_id);


CREATE TABLE dicing_plan (
 dicing_plan_id SERIAL8 NOT NULL,
 equipment_recipe_name VARCHAR(80) NOT NULL,
 process_pattern_index INT NOT NULL,
 run_id INT NOT NULL,
 process_index INT NOT NULL,
 process_pattern_group_index INT NOT NULL
);

ALTER TABLE dicing_plan ADD CONSTRAINT PK_dicing_plan PRIMARY KEY (dicing_plan_id);


CREATE TABLE dicing_plan_modify (
 dicing_result_id INT NOT NULL,
 equipment_id SERIAL NOT NULL,
 name VARCHAR(80) NOT NULL
);

ALTER TABLE dicing_plan_modify ADD CONSTRAINT PK_dicing_plan_modify PRIMARY KEY (dicing_result_id);


CREATE TABLE dicing_plan_equipment (
 dicing_plan_id INT NOT NULL,
 equipment_id SERIAL NOT NULL
);

ALTER TABLE dicing_plan_equipment ADD CONSTRAINT PK_dicing_plan_equipment PRIMARY KEY (dicing_plan_id,equipment_id);


CREATE TABLE bake_step_reult_value (
 bake_result_id INT NOT NULL,
 step_no INT4 NOT NULL,
 exhaust_duct_temperature_avg DECIMAL(8,2) NOT NULL,
 plate_temperature_avg DECIMAL(8,2) NOT NULL
);

ALTER TABLE bake_step_reult_value ADD CONSTRAINT PK_bake_step_reult_value PRIMARY KEY (bake_result_id,step_no);

CREATE UNIQUE INDEX UQ11 ON bake_step_reult_value (bake_result_id,step_no);


CREATE TABLE bake_indicated_modify (
 bake_result_id INT NOT NULL,
 bake_recipe_name VARCHAR(100) NOT NULL,
 plate_count INT4 NOT NULL
);

ALTER TABLE bake_indicated_modify ADD CONSTRAINT PK_bake_indicated_modify PRIMARY KEY (bake_result_id);


CREATE TABLE development_indicated_moify (
 development_result_id INT NOT NULL,
 development_recipe_name VARCHAR(100) NOT NULL,
 step_counts INT4 NOT NULL
);

ALTER TABLE development_indicated_moify ADD CONSTRAINT PK_development_indicated_moify PRIMARY KEY (development_result_id);


CREATE TABLE development_time_calculation_step_result_value (
 development_time_calculation_result_id INT NOT NULL,
 step_no INT4 NOT NULL,
 development_time DECIMAL(8,2) NOT NULL,
 wis_result INT NOT NULL
);

ALTER TABLE development_time_calculation_step_result_value ADD CONSTRAINT PK_development_time_calculation_step_result_value PRIMARY KEY (development_time_calculation_result_id,step_no);


CREATE TABLE exposure_map_result (
 exposure_maps_result_id INT8 NOT NULL,
 exposure_result_id INT NOT NULL,
 exposure_shot_no INT4 NOT NULL,
 exposure DECIMAL(8,2) NOT NULL,
 focus DECIMAL(8,2) NOT NULL
);

ALTER TABLE exposure_map_result ADD CONSTRAINT PK_exposure_map_result PRIMARY KEY (exposure_maps_result_id);

CREATE UNIQUE INDEX 複合UQ ON exposure_map_result (exposure_result_id,exposure_shot_no);


CREATE TABLE exposure_result_value (
 exposure_result_id INT NOT NULL,
 actual_exposure_avg DECIMAL(8,2),
 actual_exposure_time_avg DECIMAL(8,2),
 actual_illuminance_avg_value DECIMAL(8,2),
 atmospheric_pressure_value DECIMAL(8,2)
);

ALTER TABLE exposure_result_value ADD CONSTRAINT PK_exposure_result_value PRIMARY KEY (exposure_result_id);


CREATE TABLE exposure_plan_modify (
 exposure_result_id INT NOT NULL,
 equipment_id SERIAL NOT NULL,
 id INT NOT NULL,
 exposure_maps_id INT NOT NULL,
 exposure_center DECIMAL(8,2) NOT NULL,
 exposure_step DECIMAL(8,2) NOT NULL,
 focus_center DECIMAL(8,2) NOT NULL,
 focus_step DECIMAL(8,2) NOT NULL,
 numerical_aperture DECIMAL(8,2),
 sigma DECIMAL(8,2),
 reticle_id INT4 NOT NULL,
 reticle_pattern_area INT4 NOT NULL
);

ALTER TABLE exposure_plan_modify ADD CONSTRAINT PK_exposure_plan_modify PRIMARY KEY (exposure_result_id);


CREATE TABLE sem_image_result (
 sem_imaging_result_id SERIAL8 NOT NULL,
 sem_result_id INT NOT NULL,
 shot_no INT NOT NULL,
 position_no_0 INT NOT NULL,
 image_filepath VARCHAR(100) NOT NULL,
 exposure_map_result_id INT8 NOT NULL
);

ALTER TABLE sem_image_result ADD CONSTRAINT PK_sem_image_result PRIMARY KEY (sem_imaging_result_id);


CREATE TABLE manual_image_processing_result_image (
 manual_judgment_image_result_id SERIAL8 NOT NULL,
 manual_judgment_result_id INT NOT NULL,
 is_ok BOOLEAN NOT NULL,
 sem_image_ng_pattern_id INT NOT NULL,
 comment VARCHAR(100),
 sem_imaging_result_id INT NOT NULL
);

ALTER TABLE manual_image_processing_result_image ADD CONSTRAINT PK_manual_image_processing_result_image PRIMARY KEY (manual_judgment_image_result_id);


CREATE TABLE auto_image_processing_result_image (
 auto_judgment_image_result_id INT8 NOT NULL,
 auto_judgment_result_id INT NOT NULL,
 is_ok BOOLEAN NOT NULL,
 sem_image_ng_pattern_id INT NOT NULL,
 sem_imaging_result_id INT NOT NULL
);

ALTER TABLE auto_image_processing_result_image ADD CONSTRAINT PK_auto_image_processing_result_image PRIMARY KEY (auto_judgment_image_result_id);


CREATE TABLE wis_reult_value (
 wis_result_id SERIAL8 NOT NULL,
 inspection_result INT4 NOT NULL,
 macro_no_defect INT4 NOT NULL,
 loca_no_defect INT4 NOT NULL,
 macro_class VARCHAR(40) NOT NULL,
 ebr_width DECIMAL(8,2) NOT NULL,
 ebr_shift DECIMAL(8,2) NOT NULL,
 ebr_value_top DECIMAL(8,2) NOT NULL,
 ebr_value_bottom DECIMAL(8,2) NOT NULL,
 ebr_value_right DECIMAL(8,2) NOT NULL,
 ebr_value_left DECIMAL(8,2) NOT NULL,
 defect_total_areawis DECIMAL(8,2) NOT NULL,
 wis_no_defect_class INT4 NOT NULL
);

ALTER TABLE wis_reult_value ADD CONSTRAINT PK_wis_reult_value PRIMARY KEY (wis_result_id);


CREATE TABLE wis_result_value_color_defect (
 wis_result_id SERIAL8 NOT NULL,
 color_defect_no INT4 NOT NULL,
 color_defect_classcode INT4 NOT NULL,
 color_defect_classname VARCHAR(40) NOT NULL,
 color_difference_value DECIMAL(8,2) NOT NULL
);

ALTER TABLE wis_result_value_color_defect ADD CONSTRAINT PK_wis_result_value_color_defect PRIMARY KEY (wis_result_id,color_defect_no);


CREATE TABLE wis_result_value_defect_area (
 wis_result_id SERIAL8 NOT NULL,
 local_area_defect_no INT4 NOT NULL,
 wis_defect_class_code INT4 NOT NULL,
 defect_area DECIMAL(8,2) NOT NULL
);

ALTER TABLE wis_result_value_defect_area ADD CONSTRAINT PK_wis_result_value_defect_area PRIMARY KEY (wis_result_id,local_area_defect_no);


CREATE TABLE wis_result_value_global_defect (
 wis_result_id SERIAL8 NOT NULL,
 global_defect_no INT4 NOT NULL,
 global_defect_classcode INT4 NOT NULL,
 global_defect_classname VARCHAR(40) NOT NULL,
 total_defect_density DECIMAL(8,2) NOT NULL
);

ALTER TABLE wis_result_value_global_defect ADD CONSTRAINT PK_wis_result_value_global_defect PRIMARY KEY (wis_result_id,global_defect_no);


CREATE TABLE wis_reult_value_local_defect (
 wis_result_id SERIAL8 NOT NULL,
 local_defect_no INT4 NOT NULL,
 local_defect_class_code INT4 NOT NULL,
 local_defect_classname VARCHAR(40) NOT NULL,
 value INT4 NOT NULL
);

ALTER TABLE wis_reult_value_local_defect ADD CONSTRAINT PK_wis_reult_value_local_defect PRIMARY KEY (wis_result_id,local_defect_no);


CREATE TABLE cure_reult_value (
 cure_result_id SERIAL8 NOT NULL,
  furnace_no INT4 NOT NULL,
 furnace_position INT4 NOT NULL,
 cooling_rate DECIMAL(4,2) NOT NULL,
 gas_id INT NOT NULL
);

ALTER TABLE cure_reult_value ADD CONSTRAINT PK_cure_reult_value PRIMARY KEY (cure_result_id);


CREATE TABLE cure_indicated_modify (
 cure_result_id SERIAL8 NOT NULL,
 recipe_name VARCHAR(100) NOT NULL,
 sptep_counts INT4 NOT NULL,
 cooling_rate DECIMAL(4,2) NOT NULL
);

ALTER TABLE cure_indicated_modify ADD CONSTRAINT PK_cure_indicated_modify PRIMARY KEY (cure_result_id);


CREATE TABLE coat_step_indicated_modify (
 coat_result_id INT NOT NULL,
 step_no INT4 NOT NULL,
 processing_time DECIMAL(8,2) NOT NULL,
 spin_coating_speed INT NOT NULL,
 spin_coating_acceleration DECIMAL(8,2) NOT NULL,
 coat_step_id INT
);

ALTER TABLE coat_step_indicated_modify ADD CONSTRAINT PK_coat_step_indicated_modify PRIMARY KEY (coat_result_id,step_no);


CREATE TABLE coat_dispense_indicated_modify (
 coat_result_id INT NOT NULL,
 step_no INT4 NOT NULL,
 dispense_id INT NOT NULL,
 pump_recipe_id VARCHAR(54) NOT NULL
);

ALTER TABLE coat_dispense_indicated_modify ADD CONSTRAINT PK_coat_dispense_indicated_modify PRIMARY KEY (coat_result_id,step_no,dispense_id);


CREATE TABLE コート_回転_指示値_手動_modify (
 ステップNo SERIAL4 NOT NULL,
 coat_result_id INT NOT NULL,
 回転種別 INT NOT NULL
);

ALTER TABLE コート_回転_指示値_手動_modify ADD CONSTRAINT PK_コート_回転_指示値_手動_modify PRIMARY KEY (ステップNo,coat_result_id);


CREATE TABLE dicing_reult_value (
 dicing_result_id INT NOT NULL,
 precut_cut_count INT4 NOT NULL,
 exchange_blade_cut_count INT4 NOT NULL
);

ALTER TABLE dicing_reult_value ADD CONSTRAINT PK_dicing_reult_value PRIMARY KEY (dicing_result_id);


CREATE TABLE bake_plate_indicated_modify (
 bake_result_id INT NOT NULL,
 plate_no INT4 NOT NULL,
 plate_unit_id INT NOT NULL,
 main_temperature INT4 NOT NULL,
 exhaust_heater_temperature INT4 NOT NULL
);

ALTER TABLE bake_plate_indicated_modify ADD CONSTRAINT PK_bake_plate_indicated_modify PRIMARY KEY (bake_result_id,plate_no);

CREATE UNIQUE INDEX UQ12 ON bake_plate_indicated_modify (bake_result_id,plate_no);


CREATE TABLE development_step_indicated_moify (
 development_result_id INT NOT NULL,
 step_no INT4 NOT NULL,
 processing_time DECIMAL(8,2) NOT NULL,
 development_speed INT NOT NULL,
 development_acceleration DECIMAL(8,2) NOT NULL,
 development_step_id INT
);

ALTER TABLE development_step_indicated_moify ADD CONSTRAINT PK_development_step_indicated_moify PRIMARY KEY (development_result_id,step_no);


CREATE TABLE m_development_dispense_indicated_modify (
 development_result_id INT NOT NULL,
 step_no INT4 NOT NULL,
 dispense_id INT NOT NULL,
 pump_recipe_id INT4 NOT NULL
);

ALTER TABLE m_development_dispense_indicated_modify ADD CONSTRAINT PK_m_development_dispense_indicated_modify PRIMARY KEY (development_result_id,step_no,dispense_id);


CREATE TABLE thickness_measure_result (
 thickness_measurement_result_id SERIAL8 NOT NULL,
 thickness_result_id INT NOT NULL,
 measurement_position_no INT4 NOT NULL,
 x_coordinate DECIMAL(8,2) NOT NULL,
 y_coordinate DECIMAL(8,2) NOT NULL,
 thickness DECIMAL(8,2) NOT NULL,
 refractive_index DECIMAL(8,2) NOT NULL,
 remaining_film DECIMAL(8,2),
 exposure_map_result_id INT8,
 exposure_maps_id INT,
 exposure_shot_no INT
);

ALTER TABLE thickness_measure_result ADD CONSTRAINT PK_thickness_measure_result PRIMARY KEY (thickness_measurement_result_id);


CREATE TABLE cure_step_reult_value (
 cure_result_id SERIAL8 NOT NULL,
 step_no INT4 NOT NULL,
 zone1_target_temperature_avg DECIMAL(4,1) NOT NULL,
 zone1_target_temperature_min DECIMAL(4,1) NOT NULL,
 zone1_target_temperature_max DECIMAL(4,1) NOT NULL,
 zone1_target_temperature_sd DECIMAL(4,2) NOT NULL,
 zone2_target_temperature_avg DECIMAL(4,1) NOT NULL,
 zone2_target_temperature_min DECIMAL(4,1) NOT NULL,
 zone2_target_temperature_max DECIMAL(4,1) NOT NULL,
 zone2_target_temperature_sd DECIMAL(4,2) NOT NULL,
 zone3_target_temperature_avg DECIMAL(4,1) NOT NULL,
 zone3_target_temperature_min DECIMAL(4,1) NOT NULL,
 zone3_target_temperature_max DECIMAL(4,1) NOT NULL,
 zone3_target_temperature_sd DECIMAL(4,2) NOT NULL,
 retention_time INT NOT NULL,
 heating_rate DECIMAL(4,2) NOT NULL,
 pressure_avg DECIMAL(4,3) NOT NULL,
 pressure_min DECIMAL(4,3) NOT NULL,
 pressure_max DECIMAL(4,3) NOT NULL,
 pressure_sd DECIMAL(5,4) NOT NULL,
 o2_avg INT NOT NULL,
 o2_min INT NOT NULL,
 o2_max INT NOT NULL,
 o2_sd INT NOT NULL
);

ALTER TABLE cure_step_reult_value ADD CONSTRAINT PK_cure_step_reult_value PRIMARY KEY (cure_result_id,step_no);


CREATE TABLE cure_step_indicated_modify (
 cure_result_id SERIAL8 NOT NULL,
 step_no INT4 NOT NULL,
 target_temperature INT4 NOT NULL,
 retention_time INT4 NOT NULL,
 heating_rate DECIMAL(4,2) NOT NULL,
 pressure DECIMAL(4,3) NOT NULL,
 gas_flow_rate INT4 NOT NULL,
 gas_target_temperature INT4 NOT NULL,
 gas_temperature_adjustment_value INT4 NOT NULL
);

ALTER TABLE cure_step_indicated_modify ADD CONSTRAINT PK_cure_step_indicated_modify PRIMARY KEY (cure_result_id,step_no);


CREATE TABLE coat_arm_indicated_modify (
 coat_result_id INT NOT NULL,
 arm_id INT NOT NULL,
 step_no INT4 NOT NULL,
 operating_id INT NOT NULL,
 scan_id INT NOT NULL,
 io_speed DECIMAL(8,2) NOT NULL,
  io_acceleration DECIMAL(8,2) NOT NULL,
  io_deceleration DECIMAL(8,2) NOT NULL,
 updown_speed DECIMAL(8,2) NOT NULL,
 updown_acceleration DECIMAL(8,2) NOT NULL,
  updown_deceleration DECIMAL(8,2) NOT NULL,
 target_position_type_id INT,
 target_position_x_offset DECIMAL(8,2) NOT NULL,
 target_position_y_offset DECIMAL(8,2) NOT NULL,
 scan_position_type_id INT,
 target_position_height DECIMAL(8,2) NOT NULL,
 scan_position_x_offset DECIMAL(8,2) NOT NULL,
 scan_position_y_offset DECIMAL(8,2) NOT NULL,
 scan_position_height DECIMAL(8,2) NOT NULL,
 cut_width DECIMAL(8,2) NOT NULL
);

ALTER TABLE coat_arm_indicated_modify ADD CONSTRAINT PK_coat_arm_indicated_modify PRIMARY KEY (coat_result_id,arm_id,step_no);


CREATE TABLE bake_step_indicated_modify (
 step_no INT4 NOT NULL,
 bake_result_id INT NOT NULL,
 plate_no INT4 NOT NULL,
 time INT4 NOT NULL,
 pin_height DECIMAL(8,2) NOT NULL,
 chamber_status_id INT NOT NULL
);

ALTER TABLE bake_step_indicated_modify ADD CONSTRAINT PK_bake_step_indicated_modify PRIMARY KEY (step_no,bake_result_id,plate_no);

CREATE UNIQUE INDEX UQ13 ON bake_step_indicated_modify (step_no);


CREATE TABLE development_arm_indicated_moify (
 development_result_id INT NOT NULL,
 step_no INT4 NOT NULL,
 arm_id INT NOT NULL,
 operating_mode_id INT NOT NULL,
 scan_id INT NOT NULL,
 io_speed DECIMAL(8,2) NOT NULL,
 io_acceleration DECIMAL(8,2) NOT NULL,
 io_deceleration DECIMAL(8,2) NOT NULL,
 updown_speed DECIMAL(8,2) NOT NULL,
 updown_acceleration DECIMAL(8,2) NOT NULL,
 updown_deceleration DECIMAL(8,2) NOT NULL,
 target_position_type_id INT NOT NULL,
 target_position_x_offset DECIMAL(8,2) NOT NULL,
 target_position_y_offset DECIMAL(8,2) NOT NULL,
 target_position_height DECIMAL(8,2) NOT NULL,
 scan_position_type_id INT NOT NULL,
 scan_position_x_offset DECIMAL(8,2) NOT NULL,
 scan_position_y_offset DECIMAL(8,2) NOT NULL,
 scan_position_height DECIMAL(8,2) NOT NULL,
 cut_width DECIMAL(8,2) NOT NULL
);

ALTER TABLE development_arm_indicated_moify ADD CONSTRAINT PK_development_arm_indicated_moify PRIMARY KEY (development_result_id,step_no,arm_id);


ALTER TABLE m_sem_position_no ADD CONSTRAINT FK_m_sem_position_no_0 FOREIGN KEY (genre_id) REFERENCES m_sem_genre (genre_id);
ALTER TABLE m_sem_position_no ADD CONSTRAINT FK_m_sem_position_no_1 FOREIGN KEY (ls_id) REFERENCES m_sem_ls (ls_id);
ALTER TABLE m_sem_position_no ADD CONSTRAINT FK_m_sem_position_no_2 FOREIGN KEY (size_id) REFERENCES m_sem_size (size_id);
ALTER TABLE m_sem_position_no ADD CONSTRAINT FK_m_sem_position_no_3 FOREIGN KEY (pattern_id) REFERENCES m_sem_pattern (pattern_id);


ALTER TABLE m_reticle_pattern ADD CONSTRAINT FK_m_reticle_pattern_0 FOREIGN KEY (reticle_id) REFERENCES m_reticle (reticle_id);


ALTER TABLE t_thema_plan ADD CONSTRAINT FK_t_thema_plan_0 FOREIGN KEY (project_id) REFERENCES t_project_plan (project_id);


ALTER TABLE t_run_plan ADD CONSTRAINT FK_t_run_plan_0 FOREIGN KEY (thema_id) REFERENCES t_thema_plan (thema_id);


ALTER TABLE t_process_pattern_group_plan ADD CONSTRAINT FK_t_process_pattern_group_plan_0 FOREIGN KEY (run_id) REFERENCES t_run_plan (run_id);


ALTER TABLE m_sem_imaging_group ADD CONSTRAINT FK_m_sem_imaging_group_0 FOREIGN KEY (exposure_map_id) REFERENCES m_exposure_map (exposure_maps_id);


ALTER TABLE m_sem_imaging_position_shot_no ADD CONSTRAINT FK_m_sem_imaging_position_shot_no_0 FOREIGN KEY (imaging_position_id) REFERENCES m_sem_imaging_group (sem_imaging_group_id);


ALTER TABLE m_sem_imaging_position_no ADD CONSTRAINT FK_m_sem_imaging_position_no_0 FOREIGN KEY (imaging_position_id) REFERENCES m_sem_imaging_group (sem_imaging_group_id);
ALTER TABLE m_sem_imaging_position_no ADD CONSTRAINT FK_m_sem_imaging_position_no_1 FOREIGN KEY (position_no) REFERENCES m_sem_position_no (position_no);
ALTER TABLE m_sem_imaging_position_no ADD CONSTRAINT FK_m_sem_imaging_position_no_2 FOREIGN KEY (reticle_pattern_id) REFERENCES m_reticle_pattern (reticle_pattern_id);


ALTER TABLE m_sem_machine_recipe_data ADD CONSTRAINT FK_m_sem_machine_recipe_data_0 FOREIGN KEY (observation_angle_id) REFERENCES m_angle (観察角度ID);
ALTER TABLE m_sem_machine_recipe_data ADD CONSTRAINT FK_m_sem_machine_recipe_data_1 FOREIGN KEY (exposure_map_id) REFERENCES m_exposure_map (exposure_maps_id);


ALTER TABLE m_cure_step_indicated ADD CONSTRAINT FK_m_cure_step_indicated_0 FOREIGN KEY (cure_indicated_value_id) REFERENCES m_cure_indicated_value (cure_indicated_value_id);


ALTER TABLE m_coat_step_indicated ADD CONSTRAINT FK_m_coat_step_indicated_0 FOREIGN KEY (coat_indicated_id) REFERENCES m_coat_indicated (coat_indicated_id);
ALTER TABLE m_coat_step_indicated ADD CONSTRAINT FK_m_coat_step_indicated_1 FOREIGN KEY (coat_step_id) REFERENCES m_coat_step_type (coat_step_type_id);


ALTER TABLE m_coat_dispense_indicated ADD CONSTRAINT FK_m_coat_dispense_indicated_0 FOREIGN KEY (coat_indicated_id,step_no) REFERENCES m_coat_step_indicated (coat_indicated_id,step_no);
ALTER TABLE m_coat_dispense_indicated ADD CONSTRAINT FK_m_coat_dispense_indicated_1 FOREIGN KEY (dispense_id) REFERENCES m_coat_dev_dispense (coat_dispense_id);
ALTER TABLE m_coat_dispense_indicated ADD CONSTRAINT FK_m_coat_dispense_indicated_2 FOREIGN KEY (pump_recipe_id) REFERENCES m_pump_recipe (id);


ALTER TABLE m_bake_plate_indicated ADD CONSTRAINT FK_m_bake_plate_indicated_0 FOREIGN KEY (bake_recipe_id) REFERENCES m_bake_indicated (bake_indicated_id);
ALTER TABLE m_bake_plate_indicated ADD CONSTRAINT FK_m_bake_plate_indicated_1 FOREIGN KEY (unit_id) REFERENCES m_plate_unit (plate_unit_id);


ALTER TABLE m_development_step_indicated ADD CONSTRAINT FK_m_development_step_indicated_0 FOREIGN KEY (development_indicated_id) REFERENCES m_development_indicated (development_indicated_id);
ALTER TABLE m_development_step_indicated ADD CONSTRAINT FK_m_development_step_indicated_1 FOREIGN KEY (development_step_id) REFERENCES m_development_step_type (development_step_id);


ALTER TABLE m_development_dispense_indicated ADD CONSTRAINT FK_m_development_dispense_indicated_0 FOREIGN KEY (development_indicated_id,step_no) REFERENCES m_development_step_indicated (development_indicated_id,step_no);
ALTER TABLE m_development_dispense_indicated ADD CONSTRAINT FK_m_development_dispense_indicated_1 FOREIGN KEY (dispense_id) REFERENCES m_coat_dev_dispense (coat_dispense_id);
ALTER TABLE m_development_dispense_indicated ADD CONSTRAINT FK_m_development_dispense_indicated_2 FOREIGN KEY (pump_recipe_id) REFERENCES m_pump_recipe (id);


ALTER TABLE m_thickness_position_recipe ADD CONSTRAINT FK_m_thickness_position_recipe_0 FOREIGN KEY (exposure_map_id) REFERENCES m_exposure_map (exposure_maps_id);


ALTER TABLE m_equipment ADD CONSTRAINT FK_m_equipment_0 FOREIGN KEY (equipment_maker_id) REFERENCES m_equipment_makers (equipment_maker_id);


ALTER TABLE m_exposure_equipment_focus ADD CONSTRAINT FK_m_exposure_equipment_focus_0 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE m_shot_position_relations ADD CONSTRAINT FK_m_shot_position_relations_0 FOREIGN KEY (measurement_position_recipe_id) REFERENCES m_thickness_position_recipe (thickness_position_recipe_id);


ALTER TABLE varnish_state_history ADD CONSTRAINT FK_varnish_state_history_0 FOREIGN KEY (bottle_id) REFERENCES bottles (bottle_id);
ALTER TABLE varnish_state_history ADD CONSTRAINT FK_varnish_state_history_1 FOREIGN KEY (pre_filtration_bottle_id) REFERENCES bottles (bottle_id);


ALTER TABLE m_thickness_equipment_recipe ADD CONSTRAINT FK_m_thickness_equipment_recipe_0 FOREIGN KEY (substrate_id) REFERENCES m_substrates (substrate_id);
ALTER TABLE m_thickness_equipment_recipe ADD CONSTRAINT FK_m_thickness_equipment_recipe_1 FOREIGN KEY (measurement_position_recipe_id) REFERENCES m_thickness_position_recipe (thickness_position_recipe_id);


ALTER TABLE t_process_pattern_plan ADD CONSTRAINT FK_t_process_pattern_plan_0 FOREIGN KEY (run_id,process_pattern_group_index) REFERENCES t_process_pattern_group_plan (run_id,process_pattern_group_index);


ALTER TABLE m_coat_arm_indicated ADD CONSTRAINT FK_m_coat_arm_indicated_0 FOREIGN KEY (coat_indicated_id,step_no) REFERENCES m_coat_step_indicated (coat_indicated_id,step_no);
ALTER TABLE m_coat_arm_indicated ADD CONSTRAINT FK_m_coat_arm_indicated_1 FOREIGN KEY (arm_id) REFERENCES m_coat_dev_arm_type (coat_arm_type_id);
ALTER TABLE m_coat_arm_indicated ADD CONSTRAINT FK_m_coat_arm_indicated_2 FOREIGN KEY (operating_id) REFERENCES m_coat_dev_operating_mode (coat_operating_mode_id);
ALTER TABLE m_coat_arm_indicated ADD CONSTRAINT FK_m_coat_arm_indicated_3 FOREIGN KEY (scan_id) REFERENCES m_coat_dev_scan (coat_scan_id);
ALTER TABLE m_coat_arm_indicated ADD CONSTRAINT FK_m_coat_arm_indicated_4 FOREIGN KEY (target_position_type_id) REFERENCES m_coat_dev_position_type (coat_position_type_id);
ALTER TABLE m_coat_arm_indicated ADD CONSTRAINT FK_m_coat_arm_indicated_5 FOREIGN KEY (scan_position_type_id) REFERENCES m_coat_dev_position_type (coat_position_type_id);


ALTER TABLE m_bake_step_indicated ADD CONSTRAINT FK_m_bake_step_indicated_0 FOREIGN KEY (bake_recipe_id,plate_no) REFERENCES m_bake_plate_indicated (bake_recipe_id,plate_no);
ALTER TABLE m_bake_step_indicated ADD CONSTRAINT FK_m_bake_step_indicated_1 FOREIGN KEY (chamber_status_id) REFERENCES m_chamber_status (chamber_status_id);


ALTER TABLE m_development_arm_indicated ADD CONSTRAINT FK_m_development_arm_indicated_0 FOREIGN KEY (development_indicated_id,step_no) REFERENCES m_development_step_indicated (development_indicated_id,step_no);
ALTER TABLE m_development_arm_indicated ADD CONSTRAINT FK_m_development_arm_indicated_1 FOREIGN KEY (arm_id) REFERENCES m_coat_dev_arm_type (coat_arm_type_id);
ALTER TABLE m_development_arm_indicated ADD CONSTRAINT FK_m_development_arm_indicated_2 FOREIGN KEY (operating_mode_id) REFERENCES m_coat_dev_operating_mode (coat_operating_mode_id);
ALTER TABLE m_development_arm_indicated ADD CONSTRAINT FK_m_development_arm_indicated_3 FOREIGN KEY (scan_id) REFERENCES m_coat_dev_scan (coat_scan_id);
ALTER TABLE m_development_arm_indicated ADD CONSTRAINT FK_m_development_arm_indicated_4 FOREIGN KEY (target_position_type_id) REFERENCES m_coat_dev_position_type (coat_position_type_id);
ALTER TABLE m_development_arm_indicated ADD CONSTRAINT FK_m_development_arm_indicated_5 FOREIGN KEY (scan_position_type_id) REFERENCES m_coat_dev_position_type (coat_position_type_id);


ALTER TABLE process_result ADD CONSTRAINT FK_process_result_0 FOREIGN KEY (process_pattern_index,run_id,process_pattern_group_index) REFERENCES t_process_pattern_plan (process_pattern_index,run_id,process_pattern_group_index);
ALTER TABLE process_result ADD CONSTRAINT FK_process_result_1 FOREIGN KEY (process_id) REFERENCES m_processes (process_id);
ALTER TABLE process_result ADD CONSTRAINT FK_process_result_2 FOREIGN KEY (substrate_id) REFERENCES m_substrates (substrate_id);


ALTER TABLE t_process_plan ADD CONSTRAINT FK_t_process_plan_0 FOREIGN KEY (process_pattern_index,process_pattern_group_index,run_id) REFERENCES t_process_pattern_plan (process_pattern_index,process_pattern_group_index,run_id);


ALTER TABLE bake_result ADD CONSTRAINT FK_bake_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE bake_result ADD CONSTRAINT FK_bake_result_1 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE bake_plan ADD CONSTRAINT FK_bake_plan_0 FOREIGN KEY (bake_indicated_id) REFERENCES m_bake_indicated (bake_indicated_id);
ALTER TABLE bake_plan ADD CONSTRAINT FK_bake_plan_1 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE bake_plan_modify ADD CONSTRAINT FK_bake_plan_modify_0 FOREIGN KEY (bake_result_id) REFERENCES bake_result (bake_result_id);
ALTER TABLE bake_plan_modify ADD CONSTRAINT FK_bake_plan_modify_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE bake_plan_modify ADD CONSTRAINT FK_bake_plan_modify_2 FOREIGN KEY (bake_recipe_id) REFERENCES m_bake_indicated (bake_indicated_id);


ALTER TABLE bake_plan_machine ADD CONSTRAINT FK_bake_plan_machine_0 FOREIGN KEY (bke_plan_id) REFERENCES bake_plan (bke_plan_id);
ALTER TABLE bake_plan_machine ADD CONSTRAINT FK_bake_plan_machine_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE coat_result ADD CONSTRAINT FK_coat_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE coat_result ADD CONSTRAINT FK_coat_result_1 FOREIGN KEY (bottle_id) REFERENCES bottles (bottle_id);
ALTER TABLE coat_result ADD CONSTRAINT FK_coat_result_2 FOREIGN KEY (varnish_history_id) REFERENCES varnish_state_history (varnish_history_id);
ALTER TABLE coat_result ADD CONSTRAINT FK_coat_result_3 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE coat_plan ADD CONSTRAINT FK_coat_plan_0 FOREIGN KEY (coat_recipe_id) REFERENCES m_coat_indicated (coat_indicated_id);
ALTER TABLE coat_plan ADD CONSTRAINT FK_coat_plan_1 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE coat_plan_modify ADD CONSTRAINT FK_coat_plan_modify_0 FOREIGN KEY (coat_result_id) REFERENCES coat_result (coat_result_id);
ALTER TABLE coat_plan_modify ADD CONSTRAINT FK_coat_plan_modify_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE coat_plan_modify ADD CONSTRAINT FK_coat_plan_modify_2 FOREIGN KEY (coat_recipe_id) REFERENCES m_coat_indicated (coat_indicated_id);


ALTER TABLE coat_plan_equipment ADD CONSTRAINT FK_coat_plan_equipment_0 FOREIGN KEY (coat_plan_id) REFERENCES coat_plan (coat_plan_id);
ALTER TABLE coat_plan_equipment ADD CONSTRAINT FK_coat_plan_equipment_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE development_result ADD CONSTRAINT FK_development_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE development_result ADD CONSTRAINT FK_development_result_1 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE development_plan ADD CONSTRAINT FK_development_plan_0 FOREIGN KEY (development_recipe_id) REFERENCES m_development_indicated (development_indicated_id);
ALTER TABLE development_plan ADD CONSTRAINT FK_development_plan_1 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE development_plan_modify ADD CONSTRAINT FK_development_plan_modify_0 FOREIGN KEY (development_result_id) REFERENCES development_result (development_result_id);
ALTER TABLE development_plan_modify ADD CONSTRAINT FK_development_plan_modify_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE development_plan_modify ADD CONSTRAINT FK_development_plan_modify_2 FOREIGN KEY (development_indicated_id) REFERENCES m_development_indicated (development_indicated_id);


ALTER TABLE development_plan_equipment ADD CONSTRAINT FK_development_plan_equipment_0 FOREIGN KEY (development_plan_id) REFERENCES development_plan (development_plan_id);
ALTER TABLE development_plan_equipment ADD CONSTRAINT FK_development_plan_equipment_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE development_time_calculation_result ADD CONSTRAINT FK_development_time_calculation_result_0 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE development_time_calculation_plan ADD CONSTRAINT FK_development_time_calculation_plan_0 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE development_time_calculation_plan_modify ADD CONSTRAINT FK_development_time_calculation_plan_modify_0 FOREIGN KEY (development_time_calculation_result_id) REFERENCES development_time_calculation_result (development_time_calculation_result_id);


ALTER TABLE thickness_result ADD CONSTRAINT FK_thickness_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE thickness_result ADD CONSTRAINT FK_thickness_result_1 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE thickness_plan ADD CONSTRAINT FK_thickness_plan_0 FOREIGN KEY (equipment_recipe_name) REFERENCES m_thickness_equipment_recipe (thickness_equipment_recipe_name);
ALTER TABLE thickness_plan ADD CONSTRAINT FK_thickness_plan_1 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE thickness_plan_modify ADD CONSTRAINT FK_thickness_plan_modify_0 FOREIGN KEY (thickness_result_id) REFERENCES thickness_result (thickness_result_id);
ALTER TABLE thickness_plan_modify ADD CONSTRAINT FK_thickness_plan_modify_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE thickness_plan_modify ADD CONSTRAINT FK_thickness_plan_modify_2 FOREIGN KEY (thickness_equipment_recipe_name) REFERENCES m_thickness_equipment_recipe (thickness_equipment_recipe_name);


ALTER TABLE thickness_plan_equipment ADD CONSTRAINT FK_thickness_plan_equipment_0 FOREIGN KEY (thickness_plan_id) REFERENCES thickness_plan (thickness_plan_id);
ALTER TABLE thickness_plan_equipment ADD CONSTRAINT FK_thickness_plan_equipment_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE exposure_result ADD CONSTRAINT FK_exposure_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE exposure_result ADD CONSTRAINT FK_exposure_result_1 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE exposure_plan ADD CONSTRAINT FK_exposure_plan_0 FOREIGN KEY (id) REFERENCES m_exposure_line (id);
ALTER TABLE exposure_plan ADD CONSTRAINT FK_exposure_plan_1 FOREIGN KEY (exposure_maps_id) REFERENCES m_exposure_map (exposure_maps_id);
ALTER TABLE exposure_plan ADD CONSTRAINT FK_exposure_plan_2 FOREIGN KEY (reticle_id) REFERENCES m_reticle (reticle_id);
ALTER TABLE exposure_plan ADD CONSTRAINT FK_exposure_plan_3 FOREIGN KEY (reticle_pattern_id) REFERENCES m_reticle_pattern (reticle_pattern_id);
ALTER TABLE exposure_plan ADD CONSTRAINT FK_exposure_plan_4 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE exposure_plan_equipment ADD CONSTRAINT FK_exposure_plan_equipment_0 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE exposure_plan_equipment ADD CONSTRAINT FK_exposure_plan_equipment_1 FOREIGN KEY (exposure_plan_id) REFERENCES exposure_plan (exposure_plan_id);


ALTER TABLE sem_result ADD CONSTRAINT FK_sem_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE sem_result ADD CONSTRAINT FK_sem_result_1 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE sem_plan ADD CONSTRAINT FK_sem_plan_0 FOREIGN KEY (imaging_position_id) REFERENCES m_sem_imaging_group (sem_imaging_group_id);
ALTER TABLE sem_plan ADD CONSTRAINT FK_sem_plan_1 FOREIGN KEY (equipment_recipe_name) REFERENCES m_sem_machine_recipe_data (sem_machine_recipe_data_name);
ALTER TABLE sem_plan ADD CONSTRAINT FK_sem_plan_2 FOREIGN KEY (imaging_type_id) REFERENCES m_imaging_type (id);
ALTER TABLE sem_plan ADD CONSTRAINT FK_sem_plan_3 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE sem_plan_modify ADD CONSTRAINT FK_sem_plan_modify_0 FOREIGN KEY (sem_result_id) REFERENCES sem_result (sem_result_id);
ALTER TABLE sem_plan_modify ADD CONSTRAINT FK_sem_plan_modify_1 FOREIGN KEY (position_no) REFERENCES m_sem_position_no (position_no);


ALTER TABLE sem_plan_equipment ADD CONSTRAINT FK_sem_plan_equipment_0 FOREIGN KEY (sem_plan_id) REFERENCES sem_plan (sem_plan_id);
ALTER TABLE sem_plan_equipment ADD CONSTRAINT FK_sem_plan_equipment_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE sem_image_manual_judgment_result ADD CONSTRAINT FK_sem_image_manual_judgment_result_0 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE sem_image_manual_judgment_plan ADD CONSTRAINT FK_sem_image_manual_judgment_plan_0 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE sem_image_manual_judgment_plan_modify ADD CONSTRAINT FK_sem_image_manual_judgment_plan_modify_0 FOREIGN KEY (manual_judgment_result_id) REFERENCES sem_image_manual_judgment_result (manual_judgment_result_id);


ALTER TABLE sem_image_auto_judgment_result ADD CONSTRAINT FK_sem_image_auto_judgment_result_0 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE sem_image_auto_judgment_plan ADD CONSTRAINT FK_sem_image_auto_judgment_plan_0 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE sem_image_autol_judgment_plan_modify ADD CONSTRAINT FK_sem_image_autol_judgment_plan_modify_0 FOREIGN KEY (auto_judgment_result_id) REFERENCES sem_image_auto_judgment_result (auto_judgment_result_id);


ALTER TABLE wis_result ADD CONSTRAINT FK_wis_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE wis_result ADD CONSTRAINT FK_wis_result_1 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE wis_plan ADD CONSTRAINT FK_wis_plan_0 FOREIGN KEY (equipment_recipe_name) REFERENCES m_wis_equiipment_recipe (recipe_name);
ALTER TABLE wis_plan ADD CONSTRAINT FK_wis_plan_1 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE wis_plan_modify ADD CONSTRAINT FK_wis_plan_modify_0 FOREIGN KEY (wis_result_id) REFERENCES wis_result (wis_result_id);
ALTER TABLE wis_plan_modify ADD CONSTRAINT FK_wis_plan_modify_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE wis_plan_modify ADD CONSTRAINT FK_wis_plan_modify_2 FOREIGN KEY (recipe_name) REFERENCES m_wis_equiipment_recipe (recipe_name);


ALTER TABLE wis_plan_equipment ADD CONSTRAINT FK_wis_plan_equipment_0 FOREIGN KEY (wis_plan_id) REFERENCES wis_plan (wis_plan_id);
ALTER TABLE wis_plan_equipment ADD CONSTRAINT FK_wis_plan_equipment_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE cure_result ADD CONSTRAINT FK_cure_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE cure_result ADD CONSTRAINT FK_cure_result_1 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE cure_plan ADD CONSTRAINT FK_cure_plan_0 FOREIGN KEY (run_id,process_pattern_group_index,process_pattern_index,process_index) REFERENCES t_process_plan (run_id,process_pattern_group_index,process_pattern_index,process_index);
ALTER TABLE cure_plan ADD CONSTRAINT FK_cure_plan_1 FOREIGN KEY (cure_recipe_id) REFERENCES m_cure_indicated_value (cure_indicated_value_id);


ALTER TABLE cure_plan_modify ADD CONSTRAINT FK_cure_plan_modify_0 FOREIGN KEY (cure_result_id) REFERENCES cure_result (cure_result_id);
ALTER TABLE cure_plan_modify ADD CONSTRAINT FK_cure_plan_modify_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE cure_plan_modify ADD CONSTRAINT FK_cure_plan_modify_2 FOREIGN KEY (cure_indicated_value_id) REFERENCES m_cure_indicated_value (cure_indicated_value_id);


ALTER TABLE cure_plan_equipment ADD CONSTRAINT FK_cure_plan_equipment_0 FOREIGN KEY (cure_plan_id) REFERENCES cure_plan (cure_plan_id);
ALTER TABLE cure_plan_equipment ADD CONSTRAINT FK_cure_plan_equipment_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE cooling_result ADD CONSTRAINT FK_cooling_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE cooling_result ADD CONSTRAINT FK_cooling_result_1 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE cooling_plan ADD CONSTRAINT FK_cooling_plan_0 FOREIGN KEY (equipment_recipe_name) REFERENCES m_cooling_machine_recipe (cooling_machine_recipe_name);
ALTER TABLE cooling_plan ADD CONSTRAINT FK_cooling_plan_1 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE cooling_plan_modify ADD CONSTRAINT FK_cooling_plan_modify_0 FOREIGN KEY (cooling_result_id) REFERENCES cooling_result (cooling_result_id);
ALTER TABLE cooling_plan_modify ADD CONSTRAINT FK_cooling_plan_modify_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE cooling_plan_modify ADD CONSTRAINT FK_cooling_plan_modify_2 FOREIGN KEY (cooling_machine_recipe_name) REFERENCES m_cooling_machine_recipe (cooling_machine_recipe_name);


ALTER TABLE cooling_plan_equipment ADD CONSTRAINT FK_cooling_plan_equipment_0 FOREIGN KEY (cooling_plan_id) REFERENCES cooling_plan (cooling_plan_id);
ALTER TABLE cooling_plan_equipment ADD CONSTRAINT FK_cooling_plan_equipment_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE coat_calculation_result ADD CONSTRAINT FK_coat_calculation_result_0 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE coat_calculation_plan ADD CONSTRAINT FK_coat_calculation_plan_0 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE coat_calculation_plan_modify ADD CONSTRAINT FK_coat_calculation_plan_modify_0 FOREIGN KEY (coat_calculation_result_id) REFERENCES coat_calculation_result (coat_calculation_result_id);


ALTER TABLE coat_indicated_modify ADD CONSTRAINT FK_coat_indicated_modify_0 FOREIGN KEY (coat_result_id) REFERENCES coat_plan_modify (coat_result_id);


ALTER TABLE sputter_result ADD CONSTRAINT FK_sputter_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE sputter_result ADD CONSTRAINT FK_sputter_result_1 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE sputter_plan ADD CONSTRAINT FK_sputter_plan_0 FOREIGN KEY (equipment_recipe_name) REFERENCES m_sputter_equipment_recipe (sputter_equipment_recipe_name);
ALTER TABLE sputter_plan ADD CONSTRAINT FK_sputter_plan_1 FOREIGN KEY (substrate_id) REFERENCES m_substrates (substrate_id);
ALTER TABLE sputter_plan ADD CONSTRAINT FK_sputter_plan_2 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE sputter_plan_modify ADD CONSTRAINT FK_sputter_plan_modify_0 FOREIGN KEY (sputter_result_id) REFERENCES sputter_result (sputter_result_id);
ALTER TABLE sputter_plan_modify ADD CONSTRAINT FK_sputter_plan_modify_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE sputter_plan_modify ADD CONSTRAINT FK_sputter_plan_modify_2 FOREIGN KEY (sputter_equipment_recipe_name) REFERENCES m_sputter_equipment_recipe (sputter_equipment_recipe_name);
ALTER TABLE sputter_plan_modify ADD CONSTRAINT FK_sputter_plan_modify_3 FOREIGN KEY (substrate_id) REFERENCES m_substrates (substrate_id);


ALTER TABLE sputter_plan_equipment ADD CONSTRAINT FK_sputter_plan_equipment_0 FOREIGN KEY (sputter_plan_id) REFERENCES sputter_plan (sputter_plan_id);
ALTER TABLE sputter_plan_equipment ADD CONSTRAINT FK_sputter_plan_equipment_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE dicing_result ADD CONSTRAINT FK_dicing_result_0 FOREIGN KEY (result_abnormality_id) REFERENCES m_cl_abnormality (cl_abnormality_id);
ALTER TABLE dicing_result ADD CONSTRAINT FK_dicing_result_1 FOREIGN KEY (process_result_id) REFERENCES process_result (process_result_id);


ALTER TABLE dicing_plan ADD CONSTRAINT FK_dicing_plan_0 FOREIGN KEY (equipment_recipe_name) REFERENCES m_dicing_equipment_recipe (name);
ALTER TABLE dicing_plan ADD CONSTRAINT FK_dicing_plan_1 FOREIGN KEY (process_pattern_index,run_id,process_index,process_pattern_group_index) REFERENCES t_process_plan (process_pattern_index,run_id,process_index,process_pattern_group_index);


ALTER TABLE dicing_plan_modify ADD CONSTRAINT FK_dicing_plan_modify_0 FOREIGN KEY (dicing_result_id) REFERENCES dicing_result (dicing_result_id);
ALTER TABLE dicing_plan_modify ADD CONSTRAINT FK_dicing_plan_modify_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE dicing_plan_modify ADD CONSTRAINT FK_dicing_plan_modify_2 FOREIGN KEY (name) REFERENCES m_dicing_equipment_recipe (name);


ALTER TABLE dicing_plan_equipment ADD CONSTRAINT FK_dicing_plan_equipment_0 FOREIGN KEY (dicing_plan_id) REFERENCES dicing_plan (dicing_plan_id);
ALTER TABLE dicing_plan_equipment ADD CONSTRAINT FK_dicing_plan_equipment_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);


ALTER TABLE bake_step_reult_value ADD CONSTRAINT FK_bake_step_reult_value_0 FOREIGN KEY (bake_result_id) REFERENCES bake_result (bake_result_id);


ALTER TABLE bake_indicated_modify ADD CONSTRAINT FK_bake_indicated_modify_0 FOREIGN KEY (bake_result_id) REFERENCES bake_result (bake_result_id);
ALTER TABLE bake_indicated_modify ADD CONSTRAINT FK_bake_indicated_modify_1 FOREIGN KEY (bake_result_id) REFERENCES bake_plan_modify (bake_result_id);


ALTER TABLE development_indicated_moify ADD CONSTRAINT FK_development_indicated_moify_0 FOREIGN KEY (development_result_id) REFERENCES development_plan_modify (development_result_id);


ALTER TABLE development_time_calculation_step_result_value ADD CONSTRAINT FK_development_time_calculation_step_result_value_0 FOREIGN KEY (development_time_calculation_result_id) REFERENCES development_time_calculation_result (development_time_calculation_result_id);


ALTER TABLE exposure_map_result ADD CONSTRAINT FK_exposure_map_result_0 FOREIGN KEY (exposure_result_id) REFERENCES exposure_result (exposure_result_id);


ALTER TABLE exposure_result_value ADD CONSTRAINT FK_exposure_result_value_0 FOREIGN KEY (exposure_result_id) REFERENCES exposure_result (exposure_result_id);


ALTER TABLE exposure_plan_modify ADD CONSTRAINT FK_exposure_plan_modify_0 FOREIGN KEY (exposure_result_id) REFERENCES exposure_result (exposure_result_id);
ALTER TABLE exposure_plan_modify ADD CONSTRAINT FK_exposure_plan_modify_1 FOREIGN KEY (equipment_id) REFERENCES m_equipment (equipment_id);
ALTER TABLE exposure_plan_modify ADD CONSTRAINT FK_exposure_plan_modify_2 FOREIGN KEY (id) REFERENCES m_exposure_line (id);
ALTER TABLE exposure_plan_modify ADD CONSTRAINT FK_exposure_plan_modify_3 FOREIGN KEY (exposure_maps_id) REFERENCES m_exposure_map (exposure_maps_id);


ALTER TABLE sem_image_result ADD CONSTRAINT FK_sem_image_result_0 FOREIGN KEY (sem_result_id) REFERENCES sem_result (sem_result_id);
ALTER TABLE sem_image_result ADD CONSTRAINT FK_sem_image_result_1 FOREIGN KEY (position_no_0) REFERENCES m_sem_position_no (position_no);
ALTER TABLE sem_image_result ADD CONSTRAINT FK_sem_image_result_2 FOREIGN KEY (exposure_map_result_id) REFERENCES exposure_map_result (exposure_maps_result_id);


ALTER TABLE manual_image_processing_result_image ADD CONSTRAINT FK_manual_image_processing_result_image_0 FOREIGN KEY (manual_judgment_result_id) REFERENCES sem_image_manual_judgment_result (manual_judgment_result_id);
ALTER TABLE manual_image_processing_result_image ADD CONSTRAINT FK_manual_image_processing_result_image_1 FOREIGN KEY (sem_image_ng_pattern_id) REFERENCES m_sem_image_ng_pattern (id);
ALTER TABLE manual_image_processing_result_image ADD CONSTRAINT FK_manual_image_processing_result_image_2 FOREIGN KEY (sem_imaging_result_id) REFERENCES sem_image_result (sem_imaging_result_id);


ALTER TABLE auto_image_processing_result_image ADD CONSTRAINT FK_auto_image_processing_result_image_0 FOREIGN KEY (auto_judgment_result_id) REFERENCES sem_image_auto_judgment_result (auto_judgment_result_id);
ALTER TABLE auto_image_processing_result_image ADD CONSTRAINT FK_auto_image_processing_result_image_1 FOREIGN KEY (sem_image_ng_pattern_id) REFERENCES m_sem_image_ng_pattern (id);
ALTER TABLE auto_image_processing_result_image ADD CONSTRAINT FK_auto_image_processing_result_image_2 FOREIGN KEY (sem_imaging_result_id) REFERENCES sem_image_result (sem_imaging_result_id);


ALTER TABLE wis_reult_value ADD CONSTRAINT FK_wis_reult_value_0 FOREIGN KEY (wis_result_id) REFERENCES wis_result (wis_result_id);


ALTER TABLE wis_result_value_color_defect ADD CONSTRAINT FK_wis_result_value_color_defect_0 FOREIGN KEY (wis_result_id) REFERENCES wis_reult_value (wis_result_id);


ALTER TABLE wis_result_value_defect_area ADD CONSTRAINT FK_wis_result_value_defect_area_0 FOREIGN KEY (wis_result_id) REFERENCES wis_reult_value (wis_result_id);


ALTER TABLE wis_result_value_global_defect ADD CONSTRAINT FK_wis_result_value_global_defect_0 FOREIGN KEY (wis_result_id) REFERENCES wis_reult_value (wis_result_id);


ALTER TABLE wis_reult_value_local_defect ADD CONSTRAINT FK_wis_reult_value_local_defect_0 FOREIGN KEY (wis_result_id) REFERENCES wis_reult_value (wis_result_id);


ALTER TABLE cure_reult_value ADD CONSTRAINT FK_cure_reult_value_0 FOREIGN KEY (cure_result_id) REFERENCES cure_result (cure_result_id);
ALTER TABLE cure_reult_value ADD CONSTRAINT FK_cure_reult_value_1 FOREIGN KEY (gas_id) REFERENCES m_gas (gas_id);


ALTER TABLE cure_indicated_modify ADD CONSTRAINT FK_cure_indicated_modify_0 FOREIGN KEY (cure_result_id) REFERENCES cure_plan_modify (cure_result_id);


ALTER TABLE coat_step_indicated_modify ADD CONSTRAINT FK_coat_step_indicated_modify_0 FOREIGN KEY (coat_result_id) REFERENCES coat_indicated_modify (coat_result_id);
ALTER TABLE coat_step_indicated_modify ADD CONSTRAINT FK_coat_step_indicated_modify_1 FOREIGN KEY (coat_step_id) REFERENCES m_coat_step_type (coat_step_type_id);


ALTER TABLE coat_dispense_indicated_modify ADD CONSTRAINT FK_coat_dispense_indicated_modify_0 FOREIGN KEY (coat_result_id,step_no) REFERENCES coat_step_indicated_modify (coat_result_id,step_no);
ALTER TABLE coat_dispense_indicated_modify ADD CONSTRAINT FK_coat_dispense_indicated_modify_1 FOREIGN KEY (dispense_id) REFERENCES m_coat_dev_dispense (coat_dispense_id);
ALTER TABLE coat_dispense_indicated_modify ADD CONSTRAINT FK_coat_dispense_indicated_modify_2 FOREIGN KEY (pump_recipe_id) REFERENCES m_pump_recipe (id);


ALTER TABLE コート_回転_指示値_手動_modify ADD CONSTRAINT FK_コート_回転_指示値_手動_modify_0 FOREIGN KEY (coat_result_id) REFERENCES coat_indicated_modify (coat_result_id);


ALTER TABLE dicing_reult_value ADD CONSTRAINT FK_dicing_reult_value_0 FOREIGN KEY (dicing_result_id) REFERENCES dicing_result (dicing_result_id);


ALTER TABLE bake_plate_indicated_modify ADD CONSTRAINT FK_bake_plate_indicated_modify_0 FOREIGN KEY (bake_result_id) REFERENCES bake_indicated_modify (bake_result_id);
ALTER TABLE bake_plate_indicated_modify ADD CONSTRAINT FK_bake_plate_indicated_modify_1 FOREIGN KEY (plate_unit_id) REFERENCES m_plate_unit (plate_unit_id);


ALTER TABLE development_step_indicated_moify ADD CONSTRAINT FK_development_step_indicated_moify_0 FOREIGN KEY (development_result_id) REFERENCES development_indicated_moify (development_result_id);
ALTER TABLE development_step_indicated_moify ADD CONSTRAINT FK_development_step_indicated_moify_1 FOREIGN KEY (development_step_id) REFERENCES m_development_step_type (development_step_id);


ALTER TABLE m_development_dispense_indicated_modify ADD CONSTRAINT FK_m_development_dispense_indicated_modify_0 FOREIGN KEY (development_result_id,step_no) REFERENCES development_step_indicated_moify (development_result_id,step_no);
ALTER TABLE m_development_dispense_indicated_modify ADD CONSTRAINT FK_m_development_dispense_indicated_modify_1 FOREIGN KEY (dispense_id) REFERENCES m_coat_dev_dispense (coat_dispense_id);


ALTER TABLE thickness_measure_result ADD CONSTRAINT FK_thickness_measure_result_0 FOREIGN KEY (thickness_result_id) REFERENCES thickness_result (thickness_result_id);
ALTER TABLE thickness_measure_result ADD CONSTRAINT FK_thickness_measure_result_1 FOREIGN KEY (exposure_map_result_id) REFERENCES exposure_map_result (exposure_maps_result_id);
ALTER TABLE thickness_measure_result ADD CONSTRAINT FK_thickness_measure_result_2 FOREIGN KEY (exposure_maps_id) REFERENCES m_exposure_map (exposure_maps_id);


ALTER TABLE cure_step_reult_value ADD CONSTRAINT FK_cure_step_reult_value_0 FOREIGN KEY (cure_result_id) REFERENCES cure_reult_value (cure_result_id);
ALTER TABLE cure_step_reult_value ADD CONSTRAINT FK_cure_step_reult_value_1 FOREIGN KEY (cure_result_id) REFERENCES cure_result (cure_result_id);


ALTER TABLE cure_step_indicated_modify ADD CONSTRAINT FK_cure_step_indicated_modify_0 FOREIGN KEY (cure_result_id) REFERENCES cure_indicated_modify (cure_result_id);


ALTER TABLE coat_arm_indicated_modify ADD CONSTRAINT FK_coat_arm_indicated_modify_0 FOREIGN KEY (coat_result_id,step_no) REFERENCES coat_step_indicated_modify (coat_result_id,step_no);
ALTER TABLE coat_arm_indicated_modify ADD CONSTRAINT FK_coat_arm_indicated_modify_1 FOREIGN KEY (arm_id) REFERENCES m_coat_dev_arm_type (coat_arm_type_id);
ALTER TABLE coat_arm_indicated_modify ADD CONSTRAINT FK_coat_arm_indicated_modify_2 FOREIGN KEY (operating_id) REFERENCES m_coat_dev_operating_mode (coat_operating_mode_id);
ALTER TABLE coat_arm_indicated_modify ADD CONSTRAINT FK_coat_arm_indicated_modify_3 FOREIGN KEY (scan_id) REFERENCES m_coat_dev_scan (coat_scan_id);
ALTER TABLE coat_arm_indicated_modify ADD CONSTRAINT FK_coat_arm_indicated_modify_4 FOREIGN KEY (target_position_type_id) REFERENCES m_coat_dev_position_type (coat_position_type_id);
ALTER TABLE coat_arm_indicated_modify ADD CONSTRAINT FK_coat_arm_indicated_modify_5 FOREIGN KEY (scan_position_type_id) REFERENCES m_coat_dev_position_type (coat_position_type_id);


ALTER TABLE bake_step_indicated_modify ADD CONSTRAINT FK_bake_step_indicated_modify_0 FOREIGN KEY (bake_result_id,plate_no) REFERENCES bake_plate_indicated_modify (bake_result_id,plate_no);
ALTER TABLE bake_step_indicated_modify ADD CONSTRAINT FK_bake_step_indicated_modify_1 FOREIGN KEY (chamber_status_id) REFERENCES m_chamber_status (chamber_status_id);


ALTER TABLE development_arm_indicated_moify ADD CONSTRAINT FK_development_arm_indicated_moify_0 FOREIGN KEY (development_result_id,step_no) REFERENCES development_step_indicated_moify (development_result_id,step_no);
ALTER TABLE development_arm_indicated_moify ADD CONSTRAINT FK_development_arm_indicated_moify_1 FOREIGN KEY (arm_id) REFERENCES m_coat_dev_arm_type (coat_arm_type_id);
ALTER TABLE development_arm_indicated_moify ADD CONSTRAINT FK_development_arm_indicated_moify_2 FOREIGN KEY (operating_mode_id) REFERENCES m_coat_dev_operating_mode (coat_operating_mode_id);
ALTER TABLE development_arm_indicated_moify ADD CONSTRAINT FK_development_arm_indicated_moify_3 FOREIGN KEY (scan_id) REFERENCES m_coat_dev_scan (coat_scan_id);
ALTER TABLE development_arm_indicated_moify ADD CONSTRAINT FK_development_arm_indicated_moify_4 FOREIGN KEY (target_position_type_id) REFERENCES m_coat_dev_position_type (coat_position_type_id);
ALTER TABLE development_arm_indicated_moify ADD CONSTRAINT FK_development_arm_indicated_moify_5 FOREIGN KEY (scan_position_type_id) REFERENCES m_coat_dev_position_type (coat_position_type_id);


