import os
from numpy import random

def generate_parameter_file(p_num=1,
                            supply_map = "sMap.txt",
                            oxygen_map = "oxMap_0.txt",
                            random_seed = 0,
                            perf_point = "0 50 50",
                            perf_pressure = 130000,
                            term_pressure = 83000,
                            perf_flow = 8.33,
                            rho = 0.036,
                            gamma = 3,
                            lambda_exponent= 2,
                            mu_exponent = 1,
                            min_distance = 1,
                            num_nodes = 200,
                            voxel_width = 0.04,
                            closest_neighbours = 5,
                            tumour_flag = 0,
                            partial_tumour_flag = 1,
                            debug_flag = 0):
    """
    Creates text files containing the various parameters required by VascuSynth for tree generation as well as
    additional custom flags added to faciliate tumourous vasculature generation.

    num_files (int): number of parameter files to be generated. Note that 1 parameter file will correspond to 1 tree
                as we require unique oxygen demand maps for each tree.
    supply_map (string): the name of the text file containng the supply map used for tree generation.
    oxygen_map (string): the name of the text file containing the oxygen demand map used for tree generation.
    random_seed (int): the seed used by the Mersenne Twister algorithm to generate random numbers
                Setting this value to zero or not including this parameter will guarantee unique
                vascular trees even if input parameters are identical. This random number is used for
                the selection of candidate terminal nodes during tree generation.
    perf_point (int triplet): the location of the first branch branch in the 3D volume. Default is "0 50 50".
    perf_pressure (integer): the pressure at the perforation point in µmHg. Default is 133000.
    term_pressure (integer): the pressure at the terminal nodes of the tree in µmHg. The term_pressure must always be
                lower than the perf_pressure.
    perf_flow (float): the intial flow at the perforation point in m^3/(hour*kg). The default value provided by VascuSynth is
                8.33 m^3/(hour*kg). Not clear where this value comes from but the default value will be kept for now.
    rho (float): the viscosity of blood in the vascular tree in Pa*s.
    gamma (float): the bifurcation exponent that affects the ratio of the radii between the left and right branches
                at bifurcation locations.
    lambda_exponent (float): an exponent used in VascuSynth's original fitness function for generating normal trees. Increasing this value
                decreases the radii in the vascular tree.
    mu (float): an exponent used in VascuSynth's original fitness function for generating normal trees. Increasing this value
                reduces the length of the branches in the vascular structure.
    min_distance (float): the minimum distance between a bifurcation point and a candidate node.
    num_nodes (int): the number of terminal nodes to generate.
    voxel_width (float): the width of a cubed voxel for the supply and oxygenation map volume in mm.
    closest_neighbours (int): the number of branches closest to the candidate node to be considered for supplying the candidate
                terminal node. 
    tumour_flag (int bool): a flag that is set to true (1) when the user wants to generate a vascular tree that is purely tumourous.
                This will likely be removed in future work as it is only relevant for testing how tumourous generation is performing.
    partial_tumour_flag (int bool): a flag that is set to true (1) when the user wishes to generate a tree that has a tumour within
                normal vasculature. Enabling this flag will cause the generator to switch between normal and tumourous parameters
                during tree generation, leading to chaotic vasculature near the hypoxic tumour region and normal, organized vasculature
                everywhere else.
    debug_flag (int bool): a flag that is set to true (1) when the user wants to view the generated tree in 3D space immediately after
                completion. This flag triggers the generated tree to be loaded in napari, a multi-dimensional image viewer for Python,
                without any user input. The user can then rotate and zoom into the 3D structure as required.       
    """
    os.chdir('/home/jathushan/Desktop/VascuSynth/HT_Trees')

    print("Creating parameter file #" + str(p_num)+"...")
    file_name = os.getcwd()+"/p" + str(p_num) + ".txt"

    with open(file_name, "w") as file:
        # Write name of supply map file
        file.write("SUPPLY_MAP: " + supply_map + "\n")
        # Write name of the oxygenation map file
        file.write("OXYGENATION_MAP: " + oxygen_map + "\n")
        # Write the random seed value (Default is 0 which generates unique trees)
        file.write("RANDOM_SEED: " + str(random_seed) + "\n")
        # Write the perforation point (Default is 0 50 50)
        file.write("PERF_POINT: " + perf_point + "\n")
        # Write the perforation pressure
        file.write("PERF_PRESSURE: " + str(perf_pressure) + "\n")
        # Write the terminal pressure
        file.write("TERM_PRESSURE: " + str(term_pressure) + "\n")
        # Write the perforation flow
        file.write("PERF_FLOW: " + str(perf_flow) + "\n")
        # Write the rho parameter (viscosity)
        file.write("RHO: " + str(rho) + "\n")
        # Write the gamma, lambda, and mu parameters
        file.write("GAMMA: " + str(gamma) + "\n")
        file.write("LAMBDA: " + str(lambda_exponent) + "\n")
        file.write("MU: " + str(mu_exponent) + "\n")
        # Write the min distance parameter
        file.write("MIN_DISTANCE: " + str(min_distance) + "\n")
        # Write the num of nodes parameter (randomize?)
        file.write("NUM_NODES: " + str(num_nodes) + "\n")
        # Write the voxel width parameter (default is 0.04)
        file.write("VOXEL_WIDTH: " + str(voxel_width)+"\n")
        # Write the closest neighbours parameter
        file.write("CLOSEST_NEIGHBOURS: " + str(closest_neighbours) + "\n")
        # Wite the binary flags for TUMOUR, PARTIAL_TUMOUR, and DEBUG mode
        file.write("TUMOUR: " + str(tumour_flag) + "\n")
        file.write("PARTIAL_TUMOUR: " + str(partial_tumour_flag) + "\n")
        file.write("DEBUG: " + str(debug_flag) + "\n")

def pick_perforation_point():
    """
    Randomly picks a perforation point that is located on the walls of the volume (This provides better images).
    
    return: a string of an integer triplet for the perforation point
    """

    # Randomly decide if the perforation point should be on the x, y or z walls where
    # the "x,y and z walls" correspond to the walls perpendicular to those axes. For example,
    # the "z wall" refers to the top and bottom faces of the cube (perpendicular to the z-axis)

    # x = 0 --> wall = 0, y = 0 --> wall = 1, z = 0 --> wall = 2
    # x = 100 --> wall = 3, y = 100 --> wall = 4, z = 100 --> wall = 5
    wall = random.randint(0,5)
    x_coord, y_coord, z_coord = 0, 0, 0
    if wall == 0 or wall == 3:
        x_coord = 0 if wall == 0 else 100
        y_coord = random.randint(1,99)
        z_coord = random.randint(1,99)
    elif wall == 1 or wall == 4:
        x_coord = random.randint(1,99)
        y_coord = 0 if wall == 1 else 100
        z_coord = random.randint(1,99)
    else:
        x_coord = random.randint(1,99)
        y_coord = random.randint(1,99)
        z_coord = 0 if wall == 2 else 100
    
    perf_point = str(x_coord) + " " + str(y_coord) + " " + str(z_coord)
    return perf_point

def generate_tumourous_oxygen_demand_map(map_num=1):
    """
    Creates text files containing oxygen demand maps for tumourous vasculature

    num_maps (int): number of oxygen demand maps to be generated
    """
    print('Creating Oxygen Demand Map #'+str(map_num)+"...")
    with open(os.getcwd()+"/oxMap_" + str(map_num) + ".txt", "w") as file:
        # Defines dimensions of the cube (should match the actual volume)
        file.write("100 100 100\n")
        # Defines demand of 1 for entire cube, which will have certain sections
        # overwritten in the following lines
        file.write("0 0 0 100 100 100\n")
        file.write("1\n")

        # TODO: Generate a smooth gradient that ends with a nerotic region in the center
        generate_and_write_oxygen_demand_gradient(file)

def generate_and_write_oxygen_demand_gradient(file):
    """
    Logic for picking and adjusting 3D coordinates for oxygen demand cubes to create a gradient of
    decreasing oxygen demand towards the necrotic region in the centre.

    file (file object): the file object to write the coordinates and values on
    """
    # Randomly picking a region to have the hypoxic region
    demand = 1
    demand_increment = 0.1
    box_increment = 3
    # Bottom right corner coordinates
    b_right_corner_x = random.randint(0, 40)
    b_right_corner_y = random.randint(0, 40)
    b_right_corner_z = random.randint(0, 40)

    # Top left corner coordinates
    t_left_corner_x = b_right_corner_x + 60
    t_left_corner_y = b_right_corner_y + 60
    t_left_corner_z = b_right_corner_z + 60

    # Loop to write the gradient to the text file
    while (demand > 0):
        file.write(str(b_right_corner_x) + " " + str(b_right_corner_y) + " " + str(b_right_corner_z) + " ")
        file.write(str(t_left_corner_x) + " " + str(t_left_corner_y) + " " + str(t_left_corner_z) + "\n")
        demand -= demand_increment
        demand = round(demand, 1)
        if demand==0:
            # This value is close to zero but not exactly zero to avoid completely void region in center
            file.write(str(0.0) + "\n")
            break
        else:
            file.write(str(demand) + "\n")
             # Make a smaller box within the previous box
            b_right_corner_x += box_increment; b_right_corner_y += box_increment; b_right_corner_z += box_increment
            t_left_corner_x -= box_increment; t_left_corner_y -= box_increment; t_left_corner_z -= box_increment 

def main():
    os.chdir('/home/jathushan/Desktop/VascuSynth/HT_Trees')
    # Define number of trees to generate config files for
    num_of_trees = 3
    # Define parameters for generating normal vascular tres. These values are found in Table 1 of:
    # M. Kociński, A. Klepaczko, A. Materka, M. Chekenya, and A. Lundervold, 
    #   “3D image texture analysis of simulated and real-world vascular trees,” 
    #   Computer Methods and Programs in Biomedicine, vol. 107, no. 2, pp. 140–154, 2012.
    perf_pressure = 100000
    term_pressure = 60000
    rho = 0.0036
    # The parameters below were determined through experimentation for generating suitable normal vascular trees
    min_distance = 4
    num_nodes = 800
    
    # Create paramFiles.txt to hold all the parameter text files
    paramFiles = open(os.getcwd()+"/paramFiles.txt", "w")
    # Create imageNames.txt to hold all the image folder names
    imageNames = open(os.getcwd()+"/imageNames.txt", "w")

    # Create supplyMap text file (will use the default supply map provided by VascuSynth)
    with open(os.getcwd()+"/sMap.txt", "w") as file:
        file.write("100 100 100 4 \n")
        file.write("0 0 0 100 100 100 \n" )
        file.write("0.65 0.34 0.01 7 \n")

    for tree_num in range(num_of_trees):
        # Add the name of the image folder for the tree to the imageNames.txt file
        imageNames.write("image_" + str(tree_num)+"\n")
        # Add the name of the param file to the paramFiles.txt file
        paramFiles.write("p" + str(tree_num) + ".txt" + "\n")
        # Pick the perforation point for the tree
        perf_point = pick_perforation_point()

        generate_parameter_file(p_num = tree_num,
                                oxygen_map="oxMap_"+str(tree_num)+".txt",
                                perf_point=perf_point,
                                perf_pressure=perf_pressure,
                                term_pressure=term_pressure,
                                rho=rho,
                                min_distance=min_distance,
                                num_nodes=num_nodes)
        generate_tumourous_oxygen_demand_map(map_num = tree_num)

if __name__=="__main__":
    main()