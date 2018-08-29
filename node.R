# install "data.tree" package for making the nodes.
install.packages("data.tree")

#import data.tree package through library function.
library(data.tree)

# Ans 1:- Creating Genesis Node as a parent node, has value NULL
root_node <- Node$new("Genesis Node")

# Ans 2:- Creating set of child nodes of Genesis Node.
chlid_1 <- root_node$AddChild("Child_1")
chlid_2 <- root_node$AddChild("Child_2")
chlid_3 <- root_node$AddChild("Child_3")
chlid_4 <- root_node$AddChild("Child_4")
chlid_5 <- root_node$AddChild("Child_5")

# Ans 3:- Creating a child node that originates from a particular node.
sub_child<-child_1$AddChild("Sub_child")


# Ans 4:- Encrypt data inside the root node.
en <- charToRaw("root_node")
rand <- random(length(en))
ciphertext <- base::xor(en, rand)
# encrypted value is :-
rawToChar(ciphertext)

#Ans 4:- Decrypt data inside the root node.
rawToChar(base::xor(ciphertext, rand))

#Ans 8:- To find the longest chain of genesis node(root node)
distance_table(root_node, directed = TRUE)

#Ans 9:- To find the longest chain of any node or subnode.
distance_table(child_1, directed = TRUE)            #replace the name of child_1 with the required node or subnode.

#Ans 10:-Merge two node with the help of union function.
union(child_2 %u% child_3, byname = 'auto')


