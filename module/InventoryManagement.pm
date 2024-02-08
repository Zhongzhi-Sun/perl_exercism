package InventoryManagement;

use v5.38;

sub create_inventory ($items) {
    my %inventory;
    foreach my $item (@$items){
        if (exists ($inventory{$item})){
            $inventory{$item} += 1;
        }
        else {
            $inventory{$item} = 1;
        }
    }
    
    return \%inventory;
}

sub add_items ( $inventory, $items ) {
        my %inventory = %$inventory;
        foreach my $item (@$items){
        if (exists ($inventory{$item})){
            $inventory{$item} += 1;
        }
        else {
            $inventory{$item} = 1;
        }
    }
    return \%inventory;
}

sub remove_items ( $inventory, $items ) {
        my %inventory = %$inventory;
        foreach my $item (@$items){
        if (exists ($inventory{$item})){
            if ($inventory{$item} >0){
                $inventory{$item} -= 1;
            }
        }
        else {
            $inventory{$item} = 0;
        }
    }
    return \%inventory;
}

sub delete_item ( $inventory, $item ) {
    my %inventory = %$inventory;
    if (exists ($inventory{$item})){
        delete $inventory{$item};
    }
    return \%inventory;
}