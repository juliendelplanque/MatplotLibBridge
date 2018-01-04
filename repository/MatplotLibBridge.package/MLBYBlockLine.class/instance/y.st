private
y
	^ self x collect: [ :data | self yBlock value: data ]