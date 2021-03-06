#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census 

#state_data is a bascially just a huge hash


STATE_DATA = {  "Alabama" => {population_density: 94.65, population: 4822023, region: 5, regional_spread: 3},
                "Alaska" => {population_density: 1.1111, population: 731449, region: 10, regional_spread: 9},
                "Arizona" => {population_density: 57.05, population: 6553255, region: 8, regional_spread: 8},
                "Arkansas" => {population_density: 56.43, population: 2949131, region: 7, regional_spread: 5},
                "California" => {population_density: 244.2, population: 38041430, region: 9, regional_spread: 8},
                "Colorado" => {population_density: 49.33, population: 5187582, region: 8, regional_spread: 6},
                "Connecticut" => {population_density: 741.4, population: 3590347, region: 1, regional_spread: 2},
                "Deleware" => {population_density: 470.7, population: 917092, region: 3, regional_spread: 2},
                "Florida" => {population_density: 360.2, population: 19317568, region: 3, regional_spread: 5},
                "Georgia" => {population_density: 172.5, population: 9919945, region: 3, regional_spread: 5},
                "Hawaii" => {population_density: 216.8, population: 1392313, region: 11, regional_spread: 9},
                "Idaho" => {population_density: 19.15, population: 1595728, region: 8, regional_spread: 9},
                "Illinois" => {population_density: 231.9, population: 12875255, region: 4, regional_spread: 6},
                "Indiana" => {population_density: 182.5, population: 6537334, region: 4, regional_spread: 5},
                "Iowa" => {population_density: 54.81, population: 3074186, region: 6, regional_spread: 4},
                "Kansas" => {population_density: 35.09, population: 2885905, region: 6, regional_spread: 7},
                "Kentucky" => {population_density: 110.0, population: 4380415, region: 5, regional_spread: 4},
                "Louisiana" => {population_density: 105.0, population: 4601893, region: 7, regional_spread: 5},
                "Maine" => {population_density: 43.04, population: 1329192, region: 1, regional_spread: 2},
                "Maryland" => {population_density: 606.2, population: 5884563, region: 3, regional_spread: 2},
                "Massachusetts" => {population_density: 852.1, population: 6646144, region: 1, regional_spread: 2},
                "Michigan" => {population_density: 174.8, population: 9883360, region: 4, regional_spread: 2},
                "Minnesota" => {population_density: 67.14, population: 5379139, region: 6, regional_spread: 4},
                "Mississippi" => {population_density: 63.50, population: 2984926, region: 5, regional_spread: 7},
                "Missouri" => {population_density: 87.26, population: 6021988, region: 6, regional_spread: 4},
                "Montana" => {population_density: 6.86, population: 1005141, region: 8, regional_spread: 9},
                "Nebraska" => {population_density: 23.97, population: 1855525, region: 6, regional_spread: 8},
                "Nevada" => {population_density: 24.8, population: 2758931, region: 8, regional_spread: 9},
                "New Hampshire" => {population_density: 147.0, population: 1320718, region: 1, region: 1, regional_spread: 2},
                "New Jersey" => {population_density: 1205, population: 8864590, region: 2, regional_spread: 3},
                "New Mexico" => {population_density: 17.16, population: 2085538, region: 8, regional_spread: 7},
                "New York" => {population_density: 415.3, population: 19570261, region: 2, regional_spread: 1},
                "North Carolina" => {population_density: 200.6, population: 9752073, region: 3, regional_spread: 5},
                "North Dakota" => {population_density: 9.92, population: 699628, region: 6, regional_spread: 8},
                "Ohio" => {population_density: 282.5, population: 11544225, region: 4, regional_spread: 2},
                "Oklahoma" => {population_density: 55.22, population: 3814820, region: 7, regional_spread: 6},
                "Oregon" => {population_density: 40.33, population: 3899353, region: 9, regional_spread: 8},
                "Pennsylvania" => {population_density: 285.3, population: 12763536, region: 2, regional_spread: 3},
                "Rhode Island" => {population_density: 1016, population: 1050292, region: 1, regional_spread: 2},
                "South Carolina" => {population_density: 157.1, population: 4723723, region: 3, regional_spread: 5},
                "South Dakota" => {population_density: 10.86, population: 833354, region: 6, regional_spread: 8},
                "Tennessee" => {population_density: 156.6, population: 6456243, region: 5, regional_spread: 3},
                "Texas" => {population_density: 98.07, population: 26059203, region: 7, regional_spread: 3},
                "Utah" => {population_density: 34.3, population: 2855287, region: 8, regional_spread: 9},
                "Vermont" => {population_density: 67.73, population: 626011, region: 1, regional_spread: 2},
                "Virginia" => {population_density: 207.3, population: 8185867, region: 3, regional_spread: 2},
                "Washington" => {population_density: 102.6, population: 6724540, region: 9, regional_spread: 8},
                "Washington,D.C."=> {population_density: 10357, population: 632323, region: 3, regional_spread: 2},
                "West Virginia" => {population_density: 77.06, population: 1855413, region: 3, regional_spread: 4},
                "Wisconsin" => {population_density: 105.2, population: 5726398, region: 4, regional_spread: 6},
                "Wyoming" => {population_density: 5.851, population: 576412, region: 8, regional_spread: 6}
              }
              
              
              
              
              
              






