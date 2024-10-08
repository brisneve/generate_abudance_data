generate_abundance_data <- function(student_id){
  # Set the seed for reproducibility (optional)
  set.seed(student_id)
  # Generate a list of 20 vectors, each containing 50 random integers between 0 and 20
  random_vectors <- replicate(20, sample(0:20, 10, replace = TRUE))
  # assign  name to each vector
  species <- tolower(c("Mallard", "Teal", "Heron", "Egret", "Bittern",
                            "Grebe", "Coot", "Rail", "Sora", "Ibis",
                            "Gallinule", "Avocet", "Plover", "Shoveler",
                            "Moorhen", "Pintail", "Gadwall", "Stilt",
                            "Phalarope", "Sandpiper"))

  for(i in 1:20){
    if(i == sample(1:20, 1)){
      assign(paste0(species[i]), as.character(random_vectors[,i]), inherits = TRUE)
      } else {
        assign(paste0(species[i]), random_vectors[,i], inherits = TRUE)
      }
    }
}
