function palindrome_fun {

cat catz.txt
dir_name="$dirname $(readlink -f $0))" # /home/osboxes/tacocat_/new.sh) 
rm_right="${dir_name%/*)}" #/home/osboxes/tacocat_
parent_of_parent="${rm_right%/*}" #/home/osboxes
parent_dir="${rm_right#*/*/*/}" #tacocat_
script_name="`basename $0`" #new.sh
slash="/"
echo $dir_name
#echo $rm_right
#echo $parent_of_parent
#echo $parent_dir
#echo $script_name

par_dir_revd=`echo $parent_dir | rev`

#echo "rm_right: "
#echo $rm_right
#echo ""
old_dir=`echo $rm_right`
#echo $old_dir

new_str=$parent_of_parent$slash$par_dir_revd
new_dir=`echo $new_str`
#echo $new_str
#echo $new_dir

mv $old_dir $new_dir

pass_the_taco=$new_dir$slash$script_name
#echo $pass_the_taco
$pass_the_taco
echo "a tacocat pass"
}

palindrome_fun


