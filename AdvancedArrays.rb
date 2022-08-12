# ------------------------------------------------------------
# Combining Ruby Arrays
# ------------------------------------------------------------

# Add Method
days1 = ["Mon", "Tue", "Wed"]
days2 = ["Thu", "Fri", "Sat", "Sun"]
days = days1 + days2
# => ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]

# Concat Method
days1 = ["Mon", "Tue", "Wed"]
days2 = ["Thu", "Fri", "Sat", "Sun"]
days = days1.concat(days2)

# << Method
days1 = ["Mon", "Tue", "Wed"]
days1 << "Thu" << "Fri" << "Sat" << "Sun"
# => ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]

# ------------------------------------------------------------
# Intersection, Union and Difference
# ------------------------------------------------------------

operating_systems = ["Fedora", "SuSE", "RHEL", "Windows", "MacOS"]

linux_systems = ["RHEL", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora"]

# Union
operating_systems | linux_systems

# Intersection
operating_systems & linux_systems

# Difference (can make the main array by assigning them to the left)
operating_systems - linux_systems
# => ["Windows", "MacOS"]

linux_systems - operating_systems
# => ["Fedora", "SuSE", "RHEL"]

# ------------------------------------------------------------
# Identifying Unique Array Elements
# ------------------------------------------------------------

# uniq -> finds the uniq elements
linux_systems = ["RHEL", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora", "RHEL", "SuSE"]

linux_systems.uniq
=> ["RHEL", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora"]

# uniq! -> strips the duplicates in the given array
linux_systems
=> ["RHEL", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora", "RHEL", "SuSE"]

linux_systems.uniq!
=> ["RHEL", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora"]

linux_systems
=> ["RHEL", "SuSE", "PCLinuxOS", "Ubuntu", "Fedora"]

# ------------------------------------------------------------
# Push and Pop Array Elements
# ------------------------------------------------------------

colors = ["red", "green", "blue"]

# Push
colors.push "indigo"
# => ["red", "green", "blue", "indigo"]

colors.push "violet"
# => ["red", "green", "blue", "indigo", "violet"]

# Pop
colors.pop
# => "violet"

colors.pop
# => "indigo"

# ------------------------------------------------------------
# Array Comparison
# ------------------------------------------------------------
puts colors
puts days1
puts colors <=> days1 # it depends on the right array
puts days1 <=> colors

# ------------------------------------------------------------
# Modifying Arrays
# ------------------------------------------------------------

# Inserting with the specific index
colors = ["red", "green", "blue"]
# => ["red", "green", "blue"]

colors.insert( 1, "orange" )
# => ["red", "orange", "green", "blue"]

# Assigning elements to array index
colors = ["red", "green", "blue"]
# => ["red", "green", "blue"]=> ["red", "yellow", "blue"]

colors[1] = "yellow"
# => "yellow"

colors
# => ["red", "yellow", "blue"]

# Assinging elements with ranges
colors = ["red", "green", "blue"]
# => ["red", "green", "blue"]

colors[1..2] = "orange", "pink"
# => ["orange", "pink"]

colors
# => ["red", "orange", "pink"]

# ------------------------------------------------------------
# Deleting Arrays
# ------------------------------------------------------------

# delete_at
colors = ["red", "green", "blue"]
# => ["red", "green", "blue"]

colors.delete_at(1)
# => "green"

colors
# => ["red", "blue"]

# delete method
colors = ["red", "green", "blue"]
# => ["red", "green", "blue"]

colors.delete("red")
# => "red"

colors
# => ["green", "blue"]

# ------------------------------------------------------------
# Sorting Arrays
# ------------------------------------------------------------

# sort method
numbers = [1, 4, 6, 7, 3, 2, 5]
# => [1, 4, 6, 7, 3, 2, 5]

numbers.sort
# => [1, 2, 3, 4, 5, 6, 7]

# Applying it on the actual array
numbers = [1, 4, 6, 7, 3, 2, 5]
# => [1, 4, 6, 7, 3, 2, 5]

numbers.sort!
# => [1, 2, 3, 4, 5, 6, 7]

numbers.reverse
# => [7, 6, 5, 4, 3, 2, 1]