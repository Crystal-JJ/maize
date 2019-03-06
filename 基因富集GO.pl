#!/usr/bin/perl
open (IN,"top100富集GO.txt")||die"can't open eth file!:$!";
open(OUT,">基因富集GO.txt")||die"can't open eth file!:$!";
while(<IN>)
{
        chomp($_);
        $hash_file{$_}="$hash_file{$_}";
        }
        foreach(keys %hash_file)
{
        @file=split(/\t/,$_);
        if(exists $hash{$file[0]})
        {
        $hash{$file[0]}="$hash{$file[0]}\t$file[1]";
}
else
{
        $hash{$file[0]}=$file[1];
        }
        }
        foreach(keys %hash)
        {
                print OUT "$_ $hash{$_}\n";

                }