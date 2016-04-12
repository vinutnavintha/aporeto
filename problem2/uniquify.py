import getopt
import sys

verbose = False

lines_parsed = set() # holds lines already parsed

try:
	options, remainder = getopt.getopt(sys.argv[1:], 'f:o:v', ['file=', 'output=', 'verbose',])
except getopt.GetoptError:
	print 'uniquify --file=<filename> --output=<output-filename> [--verbose]'
	sys.exit(2)

if not options:
	print 'uniquify --file=<filename> --output=<output-filename> [--verbose]'
	sys.exit(2)

for opt, arg in options:
    if opt in ('-f', '--file'):
        output_file_name = arg
    elif  opt in ('-o', '--output'):
    	input_file_name = arg
    elif opt in ('-v', '--verbose'):
        verbose = True

try:
	outfile = open(output_file_name, "w")
	if(verbose):
		print "Out put file " + output_file_name + " created successfully."
	for line in open(input_file_name, "r"):
		filtered_line = line.replace("\n", "") # remove new line characters
		if filtered_line not in lines_parsed: # not a duplicate
			outfile.write(line)
			lines_parsed.add(filtered_line)
	outfile.close()

	if(verbose):
		print "Duplicate sentences removed and saved in file " + output_file_name + "."

except IOError:
	print 'Input file not found. Please retry.'