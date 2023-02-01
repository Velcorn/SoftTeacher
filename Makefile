pre:
	venv/Scripts/python.exe -m pip install -r requirements.txt -f https://download.pytorch.org/whl/torch_stable.html
	mkdir -p thirdparty
	git clone https://github.com/open-mmlab/mmdetection.git thirdparty/mmdetection
	cd thirdparty/mmdetection && venv/Scripts/python.exe -m pip install -e .
install:
	make pre
	venv/Scripts/python.exe -m pip install -e .
clean:
	rm -rf thirdparty
	rm -r ssod.egg-info
