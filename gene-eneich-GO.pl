#!/usr/bin/perl
open (IN,"top100¸»¼¯GO.txt")||die"can't open eth file!:$!";
open(OUT,">»ùÒò¸»¼¯GO.txt")||die"can't open eth file!:$!";
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
