#!usr/bin/env bash

:<<'COMMENT'
          function:对jpeg格式图片进行图片质量压缩
          params:
                  $1:压缩百分比
COMMENT
function image_compress_quality {
	for img in `ls`;do
		type=${img##*.}#只保留图片h格式部分，即删除了文件名中的“.”以及文件名称
		if [[ $type == "jpeg" ]];then
			convert $img -quality $1 $img #质量压缩
			echo "$img is successfully compressed of quality $1"
		fi
	done
}

<<'COMMENT'
         function:对jpeg/png/svg格式图片压缩分辨率（保持原始宽高比）
         params:
                 $1:压缩百分比
COMMENT
function image_compress_resolution {
	for img in `ls`;do
		type=${img##*.}
		if [[ $type == "jpeg"||$type == "png"||$type == "svg" ]];then
			convert $img -resize $1 $img #分辨率压缩
			echo "$img is successfully compressed of resolution $1"
		fi
	done
}

:<<'COMMENT'
          function:对图片批量添加自定义文本水印
          params:
                 $1:水印文本
COMMENT
function add_watermark {
	for img in `ls`;do
		mogrify -pointsize 16 -fill black -weight bolder -gravity southeast -annotate +5+5 $1 $img #添加水印
		echo "watermark is successfully added on $img"
	done
}

<<'COMMENT'
         function:统一添加文件名前缀
         params：
                $1:文件名前缀
COMMENT
function add_prefix {
	for img in `ls`;do
		mv $img $1$img #统一将ls下的所有图片添加前缀
		echo "$img is renamed as $1$img"
	done
}

<<'COMMENT'
         function:统一添加文件名后缀
         params:
                 $1:文件名后缀
COMMENT
function add_suffix {
	for img in `ls`;do
		mv $img$1
		echo "$img is renamed as $img$1"
	done
}

:<<'COMMENT'
          function:将png/svg图片统一转换为jpg格式图片
COMMENT
function image_transform {
	for img in `ls`;do
		type=${img##*.} #type记录图片类型
		if [[ $type == "png"||$type == "svg" ]];then
			convert $img ${img%%.*}.jpg #将png/svg转化为jpg
			echo "$img is successfully converted to ${img%%.*}.jpg"
		fi
	done

}

#help文档
function help_info {
	echo "PARAMETERS HELP INFO:"
	echo ":====================:"
	echo "-a [quality_args]        对jpeg格式图片进行质量压缩"
	echo "-b [resolution_args]     对jpeg/png/svg格式图片在保持原始宽高比的前提下t压缩分辨率"
	echo "-m [watermark_text]      批量添加自定义文本水印"
	echo "-p [pretix_info]         统一文件名前缀"
	echo "-s [suffix_info]         统一文件名后缀"
	echo "-t                       将png/svg图片转化为jpg图片"
	echo "-h                       help文档"
}

#main函数
if [[ $# -lt 1 ]];then
	echo "error!more args are needed"
	exit 1
else
	array=($@) #将参数存入一个数组中
	i=0
	while [[ $i -lt $# ]];do
		if [[ ${array[$i]} == $1 ]];then
			cd $1
			#ls -l
		else
			case ${array[$i]} in
				-a)
					image_compress_quality ${array[$((i+1))]};;
				-b)
					image_compress_resolution ${array[$((i+1))]};;
				-m)
					add_watermark ${array[$((i+1))]};;
				-p)
					add_prefix ${array[$((i+1))]};;
				-s)
					add_suffix ${array[$((i+1))]};;
				-t)
					image_transform;;
				-h)
					help;;
			esac
		fi
		i=$((i+1))
		#echo ${array[$((i+1))]}
	done
	exit 0
fi

