#!/bin/bash

source audio_methods.sh

selectedMethodIndex=$1
if [ -z "$1" ]; then
    first_index=1
    current_index=$i
    number_of_options=10
    while ! [[ $selectedMethodIndex =~ ^[0-9][0-9]*$ ]] || [ "$selectedMethodIndex" -ge "${#method[@]}" ]; do

        if [ "$selectedMethodIndex" = "m" ] && [ "$current_index" -lt "${#method[@]}" ]; then
            first_index=$current_index
        elif [ "$selectedMethodIndex" = "p" ]; then
            first_index=$((first_index-number_of_options))
            [ "$first_index" -le 0 ] && first_index=1
            current_index=$first_index
        else
            current_index=$first_index
        fi

        if [ "$first_index" -ge "$number_of_options" ]; then
            echo "   p - previous methods"
            echo ""
        fi
        while [ "$current_index" -lt "$((first_index+number_of_options))" ]; do
            if [ "$current_index" -lt "${#method[@]}" ]; then
                printf "  %2d - ${method[$current_index]}\n" $current_index
            fi
            ((++current_index))
        done
        echo ""
        if [ "$current_index" -lt "${#method[@]}" ]; then
            echo "   m - more methods..."
            echo ""
        fi
        read -p "Choose method: " selectedMethodIndex
    done
fi

selectedMethod=${method[$selectedMethodIndex]}
requiredArgs=${method_args[$selectedMethod]}
echo "Method: $selectedMethod"
echo "Required args: $requiredArgs"

shift
args=($@)
if [ ! -z "${requiredArgs}" ] && [ -z "${args[*]}" ]; then
    if [[ ${requiredArgs} =~ [S|s]tream ]]; then
        echo ""
        for stream in ${!AUDIO_STREAM[@]}; do
            printf "  %2d - ${AUDIO_STREAM[$stream]}\n"  $stream
        done
        echo ""
    fi
    read -p "Provide arguments to $selectedMethod: " userArgs
    args=(${userArgs[*]})
fi

declare parsedArgs=()
for arg in "${args[@]}"; do
    if [[ $arg =~ ^[0-9][0-9]*$ ]]; then # int
        parsedArgs+=(i32)
    else # string
        parsedArgs+=(s16)
    fi
    parsedArgs+=($arg)
done

echo "Calling $selectedMethod ${parsedArgs[*]}"
if [ ! -z "${parsedArgs[*]}" ]; then
    adb shell service call audio ${selectedMethodIndex} ${parsedArgs[@]}
else
    adb shell service call audio ${selectedMethodIndex}
fi
