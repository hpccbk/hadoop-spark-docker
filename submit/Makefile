run-sparkpi:
	docker-compose run app spark-submit \
		--class org.apache.spark.examples.SparkPi \
		--master yarn \
		--deploy-mode client \
		--executor-memory 4G \
		--num-executors 4 \
		/spark/examples/jars/spark-examples_2.12-3.0.1.jar \
		 1000


run-heda-preprocessing:
	docker-compose run app /data/test-preprocessing-data.sh