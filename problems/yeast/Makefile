.PHONY: all fasta features test clean

all: clean fasta genome chr-count chr-size features gene-count verified-genes uncharacterized-genes gene-types palinsreg terminated-genes

clean:
	find . \( -name \*gene\* -o -name chr-\* \) -exec rm {} \;

fasta:
	mkdir fasta
	cd fasta
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr01.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr02.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr03.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr04.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr05.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr06.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr07.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr08.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr09.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr10.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr11.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr12.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr13.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr14.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr15.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr16.fsa
	wget -q http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chrmt.fsa
	echo "Download files into \"fasta\" directory"

genome: fasta
	cat chr01.fsa chr02.fsa chr03.fsa chr04.fsa chr05.fsa chr06.fsa chr07.fsa chr08.fsa chr09.fsa chr10.fsa chr11.fsa chr12.fsa chr13.fsa chr14.fsa chr15.fsa chr16.fsa chrmt.fsa> genome.fa
	echo OK

chr-count: genome
	grep ^'>' genome.fa | wc -l > chr-count
	echo OK

chr-size: genome
	grep -v ^'>' genome.fa | wc -m > chr-size
	echo OK

features:
	wget -q http://downloads.yeastgenome.org/curation/chromosomal_feature/SGD_features.tab
	echo "Download SGD_features.tab"

gene-count: features
	grep 'ORF' SGD_features.tab | wc -w > gene-count
	echo OK

verified-genes: features
	grep 'Verified' SGD_features.tab | wc -w > verified-genes
	echo OK

uncharacterized-genes: features
	grep 'Uncharacterized' SGD_features.tab | wc -l > uncharacterized-genes
	echo OK

gene-types: features
	wc -l SGD_features.tab > gene-types
	echo OK

palinsreg:
	wget -q ftp://ftp.imicrobe.us/abe487/yeast/palinsreg.txt
	echo "Download palinsreg"

terminated-genes: palinsreg
	grep -o '/G=[^ ]*' palinsreg.txt | sort | uniq > terminated-genes
	echo OK

test:
	test.pl6
