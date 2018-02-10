sub count_process{
    my ($name) = @_;
    return int(`ps -C \"$name\" --no-header |wc -l`);
}
return 1;