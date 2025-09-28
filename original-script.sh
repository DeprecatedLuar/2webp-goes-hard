#!/bin/bash

echo " Starting WebP conversion..."
MEDIA_PATH="$HOME/Media"

# =============================================================================
# HEIC/HEIF Conversion (Quality 100)
# =============================================================================
echo "📸 Processing HEIC/HEIF files..."
find "$MEDIA_PATH" -type f \( -iname "*.heic" -o -iname "*.heif" \) -print0 | while IFS= read -r -d '' file; do
    echo "Processing HEIC: $file"
    
    # Get filename without extension
    base="${file%.*}"
    webp_file="${base}.webp"
    
    # Check if WebP already exists
    if [ -f "$webp_file" ]; then
        echo "✅ WebP exists, deleting HEIC: $file"
        rm "$file"
    else
	    echo "🔄 Converting HEIC (100): $file"
        
        # Convert to WebP
        convert "$file" -quality 100 "$webp_file"
        
        # Check if conversion successful
        if [ $? -eq 0 ]; then
            echo "✅"
            rm "$file"
        else
            echo "❌ Failed conversion: $file"
        fi
    fi
done

# =============================================================================
# JPEG Conversion (Quality 95)
# =============================================================================
echo "📷 Processing JPEG files..."
find "$MEDIA_PATH" -type f \( -iname "*.jpg" -o -iname "*.jpeg" \) -print0 | while IFS= read -r -d '' file; do
    echo "Processing JPEG: $file"
    
    # Get filename without extension
    base="${file%.*}"
    webp_file="${base}.webp"
    
    # Check if WebP already exists
    if [ -f "$webp_file" ]; then
        echo "✅ WebP exists, deleting JPEG: $file"
        rm "$file"
    else
	    echo "🔄 Converting JPEG (95%): $file"
        
        # Convert to WebP
        convert "$file" -quality 95 "$webp_file"
        
        # Check if conversion successful
        if [ $? -eq 0 ]; then
            echo "✅"
            rm "$file"
        else
            echo "❌ Failed conversion: $file"
        fi
    fi
done

# =============================================================================
# PNG Conversion (Quality 95)
# =============================================================================
echo "🖼️ Processing PNG files..."
find "$MEDIA_PATH" -type f -iname "*.png" -print0 | while IFS= read -r -d '' file; do
    echo "Processing PNG: $file"
    
    # Get filename without extension
    base="${file%.*}"
    webp_file="${base}.webp"
    
    # Check if WebP already exists
    if [ -f "$webp_file" ]; then
        echo "✅ WebP exists, deleting PNG: $file"
        rm "$file"
    else
	    echo "🔄 Converting PNG (95%): $file"
        
        # Convert to WebP
        convert "$file" -quality 95 "$webp_file"
        
        # Check if conversion successful
        if [ $? -eq 0 ]; then
            echo "✅"
            rm "$file"
        else
            echo "❌ Failed conversion: $file"
        fi
    fi
done

echo "conversion complete"
echo "💾 saved MASSIVE amounts of storage space"
... (1 line left)