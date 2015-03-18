baltimore <- subset (NEI, fips == "24510")
total.PM25yr <- tapply(baltimore$Emissions, baltimore$year, sum)

## Step 3: plot prepare to plot to png
png("C:/Users/Sadhana/Desktop/R/plot2.png")
plot(names(total.PM25yr), total.PM25yr, type = "l", xlab="Year", ylab= expression("Total" ~ PM[2.5] ~ "Emissions (tons)"), main=expression("Total for Baltimore City" ~ PM[2.5] ~ "Emissions by Year"), col = "blue")
dev.off()    
