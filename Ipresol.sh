
echo ====================================================================
echo
echo ============= "IPs Resolution Script"==============================
echo
echo ============ "Lets start Reconnaissance Script"===================
echo
echo ==================================================================
echo "Type your Domain"
# Here I've used tesla.com as a Domain
echo
read link 
echo 
sublist3r -d $link -o Results.txt
echo
echo "These are your subdomains results"
echo
cat Results.txt
echo
echo " This is the Ip Resolution"
echo
input="/home/kali/Documents/Results.txt"
echo
while IFS= read -r pth
do
nslookup $pth >> /home/kali/Documents/IPsreslol.txt
echo
done < "$input"
echo
echo ============================================================================
echo =============="Hence we have found out the Ips Resolution "==================
