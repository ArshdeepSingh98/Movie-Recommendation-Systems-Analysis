ие
иє
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ѕ
p
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2	"
adj_xbool( "
adj_ybool( 
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceѕ
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
є
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeіьout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕе
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758чѕ
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
ј
v/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
сі *)
shared_namev/embedding_1/embeddings
Є
,v/embedding_1/embeddings/Read/ReadVariableOpReadVariableOpv/embedding_1/embeddings* 
_output_shapes
:
сі *
dtype0
ј
m/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
сі *)
shared_namem/embedding_1/embeddings
Є
,m/embedding_1/embeddings/Read/ReadVariableOpReadVariableOpm/embedding_1/embeddings* 
_output_shapes
:
сі *
dtype0
і
v/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
йД *'
shared_namev/embedding/embeddings
Ѓ
*v/embedding/embeddings/Read/ReadVariableOpReadVariableOpv/embedding/embeddings* 
_output_shapes
:
йД *
dtype0
і
m/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
йД *'
shared_namem/embedding/embeddings
Ѓ
*m/embedding/embeddings/Read/ReadVariableOpReadVariableOpm/embedding/embeddings* 
_output_shapes
:
йД *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
і
embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
сі *'
shared_nameembedding_1/embeddings
Ѓ
*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings* 
_output_shapes
:
сі *
dtype0
є
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
йД *%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
йД *
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
z
serving_default_input_2Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
ч
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2embedding_1/embeddingsembedding/embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference_signature_wrapper_669

NoOpNoOp
Ќ&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*м%
value╚%B┼% BЙ%
█
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
а
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
а
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
ј
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 
ј
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses* 
ј
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 

0
1*

0
1*
* 
░
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
6trace_0
7trace_1
8trace_2
9trace_3* 
6
:trace_0
;trace_1
<trace_2
=trace_3* 
* 
Ђ
>
_variables
?_iterations
@_learning_rate
A_index_dict
B
_momentums
C_velocities
D_update_step_xla*

Eserving_default* 

0*

0*
* 
Њ
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ktrace_0* 

Ltrace_0* 
hb
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
Њ
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Rtrace_0* 

Strace_0* 
jd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Љ
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 

Ytrace_0* 

Ztrace_0* 
* 
* 
* 
Љ
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

`trace_0* 

atrace_0* 
* 
* 
* 
Љ
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

gtrace_0* 

htrace_0* 
* 
5
0
1
2
3
4
5
6*

i0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
'
?0
j1
k2
l3
m4*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

j0
l1*

k0
m1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
n	variables
o	keras_api
	ptotal
	qcount*
a[
VARIABLE_VALUEm/embedding/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEv/embedding/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEm/embedding_1/embeddings1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEv/embedding_1/embeddings1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*

p0
q1*

n	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
▄
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameembedding/embeddingsembedding_1/embeddings	iterationlearning_ratem/embedding/embeddingsv/embedding/embeddingsm/embedding_1/embeddingsv/embedding_1/embeddingstotalcountConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *%
f R
__inference__traced_save_903
О
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsembedding_1/embeddings	iterationlearning_ratem/embedding/embeddingsv/embedding/embeddingsm/embedding_1/embeddingsv/embedding_1/embeddingstotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference__traced_restore_943╗┬
ЈT
Х	
__inference__traced_save_903
file_prefix?
+read_disablecopyonread_embedding_embeddings:
йД C
/read_1_disablecopyonread_embedding_1_embeddings:
сі ,
"read_2_disablecopyonread_iteration:	 0
&read_3_disablecopyonread_learning_rate: C
/read_4_disablecopyonread_m_embedding_embeddings:
йД C
/read_5_disablecopyonread_v_embedding_embeddings:
йД E
1read_6_disablecopyonread_m_embedding_1_embeddings:
сі E
1read_7_disablecopyonread_v_embedding_1_embeddings:
сі (
read_8_disablecopyonread_total: (
read_9_disablecopyonread_count: 
savev2_const
identity_21ѕбMergeV2CheckpointsбRead/DisableCopyOnReadбRead/ReadVariableOpбRead_1/DisableCopyOnReadбRead_1/ReadVariableOpбRead_2/DisableCopyOnReadбRead_2/ReadVariableOpбRead_3/DisableCopyOnReadбRead_3/ReadVariableOpбRead_4/DisableCopyOnReadбRead_4/ReadVariableOpбRead_5/DisableCopyOnReadбRead_5/ReadVariableOpбRead_6/DisableCopyOnReadбRead_6/ReadVariableOpбRead_7/DisableCopyOnReadбRead_7/ReadVariableOpбRead_8/DisableCopyOnReadбRead_8/ReadVariableOpбRead_9/DisableCopyOnReadбRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partЂ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: }
Read/DisableCopyOnReadDisableCopyOnRead+read_disablecopyonread_embedding_embeddings"/device:CPU:0*
_output_shapes
 Е
Read/ReadVariableOpReadVariableOp+read_disablecopyonread_embedding_embeddings^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
йД *
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
йД c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
йД Ѓ
Read_1/DisableCopyOnReadDisableCopyOnRead/read_1_disablecopyonread_embedding_1_embeddings"/device:CPU:0*
_output_shapes
 ▒
Read_1/ReadVariableOpReadVariableOp/read_1_disablecopyonread_embedding_1_embeddings^Read_1/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
сі *
dtype0o

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
сі e

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0* 
_output_shapes
:
сі v
Read_2/DisableCopyOnReadDisableCopyOnRead"read_2_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 џ
Read_2/ReadVariableOpReadVariableOp"read_2_disablecopyonread_iteration^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	e

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: [

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 ъ
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_learning_rate^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0e

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: [

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: Ѓ
Read_4/DisableCopyOnReadDisableCopyOnRead/read_4_disablecopyonread_m_embedding_embeddings"/device:CPU:0*
_output_shapes
 ▒
Read_4/ReadVariableOpReadVariableOp/read_4_disablecopyonread_m_embedding_embeddings^Read_4/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
йД *
dtype0o

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
йД e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
йД Ѓ
Read_5/DisableCopyOnReadDisableCopyOnRead/read_5_disablecopyonread_v_embedding_embeddings"/device:CPU:0*
_output_shapes
 ▒
Read_5/ReadVariableOpReadVariableOp/read_5_disablecopyonread_v_embedding_embeddings^Read_5/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
йД *
dtype0p
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
йД g
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0* 
_output_shapes
:
йД Ё
Read_6/DisableCopyOnReadDisableCopyOnRead1read_6_disablecopyonread_m_embedding_1_embeddings"/device:CPU:0*
_output_shapes
 │
Read_6/ReadVariableOpReadVariableOp1read_6_disablecopyonread_m_embedding_1_embeddings^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
сі *
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
сі g
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
сі Ё
Read_7/DisableCopyOnReadDisableCopyOnRead1read_7_disablecopyonread_v_embedding_1_embeddings"/device:CPU:0*
_output_shapes
 │
Read_7/ReadVariableOpReadVariableOp1read_7_disablecopyonread_v_embedding_1_embeddings^Read_7/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
сі *
dtype0p
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
сі g
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0* 
_output_shapes
:
сі r
Read_8/DisableCopyOnReadDisableCopyOnReadread_8_disablecopyonread_total"/device:CPU:0*
_output_shapes
 ќ
Read_8/ReadVariableOpReadVariableOpread_8_disablecopyonread_total^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: r
Read_9/DisableCopyOnReadDisableCopyOnReadread_9_disablecopyonread_count"/device:CPU:0*
_output_shapes
 ќ
Read_9/ReadVariableOpReadVariableOpread_9_disablecopyonread_count^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: А
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╩
value└BйB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЃ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B ╣
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_20Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_21IdentityIdentity_20:output:0^NoOp*
T0*
_output_shapes
: Н
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_21Identity_21:output:0*+
_input_shapes
: : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
»
§
>__inference_model_layer_call_and_return_conditional_losses_569

inputs
inputs_1#
embedding_1_559:
сі !
embedding_562:
йД 
identityѕб!embedding/StatefulPartitionedCallб#embedding_1/StatefulPartitionedCallТ
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_1_559*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_1_layer_call_and_return_conditional_losses_488я
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_562*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_embedding_layer_call_and_return_conditional_losses_502О
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_512П
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_1_layer_call_and_return_conditional_losses_520Ж
dot/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *E
f@R>
<__inference_dot_layer_call_and_return_conditional_losses_534k
IdentityIdentitydot/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         љ
NoOpNoOp"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Б

)__inference_embedding_1_layer_call_fn_769

inputs
unknown:
сі 
identityѕбStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_1_layer_call_and_return_conditional_losses_488s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ъ
}
'__inference_embedding_layer_call_fn_752

inputs
unknown:
йД 
identityѕбStatefulPartitionedCall╬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_embedding_layer_call_and_return_conditional_losses_502s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:          `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
├
е
#__inference_model_layer_call_fn_689
inputs_0
inputs_1
unknown:
сі 
	unknown_0:
йД 
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_model_layer_call_and_return_conditional_losses_593o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0
ї
Њ
>__inference_model_layer_call_and_return_conditional_losses_717
inputs_0
inputs_14
 embedding_1_embedding_lookup_694:
сі 2
embedding_embedding_lookup_700:
йД 
identityѕбembedding/embedding_lookupбembedding_1/embedding_lookupc
embedding_1/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:         т
embedding_1/embedding_lookupResourceGather embedding_1_embedding_lookup_694embedding_1/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding_1/embedding_lookup/694*+
_output_shapes
:          *
dtype0├
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding_1/embedding_lookup/694*+
_output_shapes
:          Ў
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:          a
embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:         П
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_700embedding/Cast:y:0*
Tindices0*1
_class'
%#loc:@embedding/embedding_lookup/700*+
_output_shapes
:          *
dtype0й
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*1
_class'
%#loc:@embedding/embedding_lookup/700*+
_output_shapes
:          Ћ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:          ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"        ћ
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:          `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        џ
flatten_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:          T
dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
dot/ExpandDims
ExpandDimsflatten/Reshape:output:0dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:          V
dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Ј
dot/ExpandDims_1
ExpandDimsflatten_1/Reshape:output:0dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Ё

dot/MatMulBatchMatMulV2dot/ExpandDims:output:0dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:         Z
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
::ь¤t
dot/SqueezeSqueezedot/MatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
c
IdentityIdentitydot/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:         ѓ
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0
»
§
>__inference_model_layer_call_and_return_conditional_losses_593

inputs
inputs_1#
embedding_1_583:
сі !
embedding_586:
йД 
identityѕб!embedding/StatefulPartitionedCallб#embedding_1/StatefulPartitionedCallТ
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_1_583*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_1_layer_call_and_return_conditional_losses_488я
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_586*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_embedding_layer_call_and_return_conditional_losses_502О
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_512П
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_1_layer_call_and_return_conditional_losses_520Ж
dot/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *E
f@R>
<__inference_dot_layer_call_and_return_conditional_losses_534k
IdentityIdentitydot/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         љ
NoOpNoOp"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
й
д
#__inference_model_layer_call_fn_576
input_1
input_2
unknown:
сі 
	unknown_0:
йД 
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_model_layer_call_and_return_conditional_losses_569o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 22
StatefulPartitionedCallStatefulPartitionedCall:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:P L
'
_output_shapes
:         
!
_user_specified_name	input_1
ќ	
а
D__inference_embedding_1_layer_call_and_return_conditional_losses_488

inputs(
embedding_lookup_482:
сі 
identityѕбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         х
embedding_lookupResourceGatherembedding_lookup_482Cast:y:0*
Tindices0*'
_class
loc:@embedding_lookup/482*+
_output_shapes
:          *
dtype0Ъ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_class
loc:@embedding_lookup/482*+
_output_shapes
:          Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:          w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:          Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ќ	
а
D__inference_embedding_1_layer_call_and_return_conditional_losses_779

inputs(
embedding_lookup_773:
сі 
identityѕбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         х
embedding_lookupResourceGatherembedding_lookup_773Cast:y:0*
Tindices0*'
_class
loc:@embedding_lookup/773*+
_output_shapes
:          *
dtype0Ъ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_class
loc:@embedding_lookup/773*+
_output_shapes
:          Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:          w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:          Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
├
е
#__inference_model_layer_call_fn_679
inputs_0
inputs_1
unknown:
сі 
	unknown_0:
йД 
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_model_layer_call_and_return_conditional_losses_569o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 22
StatefulPartitionedCallStatefulPartitionedCall:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0
║
^
B__inference_flatten_1_layer_call_and_return_conditional_losses_801

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:          X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          :S O
+
_output_shapes
:          
 
_user_specified_nameinputs
ћ	
ъ
B__inference_embedding_layer_call_and_return_conditional_losses_502

inputs(
embedding_lookup_496:
йД 
identityѕбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         х
embedding_lookupResourceGatherembedding_lookup_496Cast:y:0*
Tindices0*'
_class
loc:@embedding_lookup/496*+
_output_shapes
:          *
dtype0Ъ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_class
loc:@embedding_lookup/496*+
_output_shapes
:          Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:          w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:          Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ї
Њ
>__inference_model_layer_call_and_return_conditional_losses_745
inputs_0
inputs_14
 embedding_1_embedding_lookup_722:
сі 2
embedding_embedding_lookup_728:
йД 
identityѕбembedding/embedding_lookupбembedding_1/embedding_lookupc
embedding_1/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:         т
embedding_1/embedding_lookupResourceGather embedding_1_embedding_lookup_722embedding_1/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding_1/embedding_lookup/722*+
_output_shapes
:          *
dtype0├
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding_1/embedding_lookup/722*+
_output_shapes
:          Ў
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:          a
embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:         П
embedding/embedding_lookupResourceGatherembedding_embedding_lookup_728embedding/Cast:y:0*
Tindices0*1
_class'
%#loc:@embedding/embedding_lookup/728*+
_output_shapes
:          *
dtype0й
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*1
_class'
%#loc:@embedding/embedding_lookup/728*+
_output_shapes
:          Ћ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:          ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"        ћ
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:          `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        џ
flatten_1/ReshapeReshape0embedding_1/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:          T
dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
dot/ExpandDims
ExpandDimsflatten/Reshape:output:0dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:          V
dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Ј
dot/ExpandDims_1
ExpandDimsflatten_1/Reshape:output:0dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Ё

dot/MatMulBatchMatMulV2dot/ExpandDims:output:0dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:         Z
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
::ь¤t
dot/SqueezeSqueezedot/MatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
c
IdentityIdentitydot/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:         ѓ
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:QM
'
_output_shapes
:         
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:         
"
_user_specified_name
inputs_0
Џ
ц
!__inference_signature_wrapper_669
input_1
input_2
unknown:
сі 
	unknown_0:
йД 
identityѕбStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference__wrapped_model_473o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 22
StatefulPartitionedCallStatefulPartitionedCall:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:P L
'
_output_shapes
:         
!
_user_specified_name	input_1
▒
§
>__inference_model_layer_call_and_return_conditional_losses_551
input_1
input_2#
embedding_1_541:
сі !
embedding_544:
йД 
identityѕб!embedding/StatefulPartitionedCallб#embedding_1/StatefulPartitionedCallт
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_541*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_1_layer_call_and_return_conditional_losses_488▀
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_544*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_embedding_layer_call_and_return_conditional_losses_502О
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_512П
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_1_layer_call_and_return_conditional_losses_520Ж
dot/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *E
f@R>
<__inference_dot_layer_call_and_return_conditional_losses_534k
IdentityIdentitydot/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         љ
NoOpNoOp"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:P L
'
_output_shapes
:         
!
_user_specified_name	input_1
й
д
#__inference_model_layer_call_fn_600
input_1
input_2
unknown:
сі 
	unknown_0:
йД 
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *G
fBR@
>__inference_model_layer_call_and_return_conditional_losses_593o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 22
StatefulPartitionedCallStatefulPartitionedCall:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:P L
'
_output_shapes
:         
!
_user_specified_name	input_1
И
\
@__inference_flatten_layer_call_and_return_conditional_losses_512

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:          X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          :S O
+
_output_shapes
:          
 
_user_specified_nameinputs
 .
г
__inference__traced_restore_943
file_prefix9
%assignvariableop_embedding_embeddings:
йД =
)assignvariableop_1_embedding_1_embeddings:
сі &
assignvariableop_2_iteration:	 *
 assignvariableop_3_learning_rate: =
)assignvariableop_4_m_embedding_embeddings:
йД =
)assignvariableop_5_v_embedding_embeddings:
йД ?
+assignvariableop_6_m_embedding_1_embeddings:
сі ?
+assignvariableop_7_v_embedding_1_embeddings:
сі "
assignvariableop_8_total: "
assignvariableop_9_count: 
identity_11ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_2бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9ц
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╩
value└BйB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHє
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B Н
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_1AssignVariableOp)assignvariableop_1_embedding_1_embeddingsIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_2AssignVariableOpassignvariableop_2_iterationIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:и
AssignVariableOp_3AssignVariableOp assignvariableop_3_learning_rateIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_4AssignVariableOp)assignvariableop_4_m_embedding_embeddingsIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_5AssignVariableOp)assignvariableop_5_v_embedding_embeddingsIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_6AssignVariableOp+assignvariableop_6_m_embedding_1_embeddingsIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_7AssignVariableOp+assignvariableop_7_v_embedding_1_embeddingsIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ф
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_11IdentityIdentity_10:output:0^NoOp_1*
T0*
_output_shapes
: ў
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
А
C
'__inference_flatten_1_layer_call_fn_795

inputs
identityГ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_1_layer_call_and_return_conditional_losses_520`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          :S O
+
_output_shapes
:          
 
_user_specified_nameinputs
╗	
h
<__inference_dot_layer_call_and_return_conditional_losses_819
inputs_0
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :q

ExpandDims
ExpandDimsinputs_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:         R
ShapeShapeMatMul:output:0*
T0*
_output_shapes
::ь¤l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:          :          :QM
'
_output_shapes
:          
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:          
"
_user_specified_name
inputs_0
И
\
@__inference_flatten_layer_call_and_return_conditional_losses_790

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:          X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          :S O
+
_output_shapes
:          
 
_user_specified_nameinputs
▒
§
>__inference_model_layer_call_and_return_conditional_losses_537
input_1
input_2#
embedding_1_489:
сі !
embedding_503:
йД 
identityѕб!embedding/StatefulPartitionedCallб#embedding_1/StatefulPartitionedCallт
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_489*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_1_layer_call_and_return_conditional_losses_488▀
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_503*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:          *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_embedding_layer_call_and_return_conditional_losses_502О
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_512П
flatten_1/PartitionedCallPartitionedCall,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *K
fFRD
B__inference_flatten_1_layer_call_and_return_conditional_losses_520Ж
dot/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *E
f@R>
<__inference_dot_layer_call_and_return_conditional_losses_534k
IdentityIdentitydot/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         љ
NoOpNoOp"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:P L
'
_output_shapes
:         
!
_user_specified_name	input_1
ћ	
ъ
B__inference_embedding_layer_call_and_return_conditional_losses_762

inputs(
embedding_lookup_756:
йД 
identityѕбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         х
embedding_lookupResourceGatherembedding_lookup_756Cast:y:0*
Tindices0*'
_class
loc:@embedding_lookup/756*+
_output_shapes
:          *
dtype0Ъ
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*'
_class
loc:@embedding_lookup/756*+
_output_shapes
:          Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:          w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:          Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
║
^
B__inference_flatten_1_layer_call_and_return_conditional_losses_520

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"        \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:          X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          :S O
+
_output_shapes
:          
 
_user_specified_nameinputs
њ
M
!__inference_dot_layer_call_fn_807
inputs_0
inputs_1
identity┤
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *E
f@R>
<__inference_dot_layer_call_and_return_conditional_losses_534`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:          :          :QM
'
_output_shapes
:          
"
_user_specified_name
inputs_1:Q M
'
_output_shapes
:          
"
_user_specified_name
inputs_0
Ю
A
%__inference_flatten_layer_call_fn_784

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_flatten_layer_call_and_return_conditional_losses_512`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:          "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:          :S O
+
_output_shapes
:          
 
_user_specified_nameinputs
Ф
Ѕ
__inference__wrapped_model_473
input_1
input_2:
&model_embedding_1_embedding_lookup_450:
сі 8
$model_embedding_embedding_lookup_456:
йД 
identityѕб model/embedding/embedding_lookupб"model/embedding_1/embedding_lookuph
model/embedding_1/CastCastinput_2*

DstT0*

SrcT0*'
_output_shapes
:         §
"model/embedding_1/embedding_lookupResourceGather&model_embedding_1_embedding_lookup_450model/embedding_1/Cast:y:0*
Tindices0*9
_class/
-+loc:@model/embedding_1/embedding_lookup/450*+
_output_shapes
:          *
dtype0Н
+model/embedding_1/embedding_lookup/IdentityIdentity+model/embedding_1/embedding_lookup:output:0*
T0*9
_class/
-+loc:@model/embedding_1/embedding_lookup/450*+
_output_shapes
:          Ц
-model/embedding_1/embedding_lookup/Identity_1Identity4model/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:          f
model/embedding/CastCastinput_1*

DstT0*

SrcT0*'
_output_shapes
:         ш
 model/embedding/embedding_lookupResourceGather$model_embedding_embedding_lookup_456model/embedding/Cast:y:0*
Tindices0*7
_class-
+)loc:@model/embedding/embedding_lookup/456*+
_output_shapes
:          *
dtype0¤
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0*
T0*7
_class-
+)loc:@model/embedding/embedding_lookup/456*+
_output_shapes
:          А
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:          d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"        д
model/flatten/ReshapeReshape4model/embedding/embedding_lookup/Identity_1:output:0model/flatten/Const:output:0*
T0*'
_output_shapes
:          f
model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"        г
model/flatten_1/ReshapeReshape6model/embedding_1/embedding_lookup/Identity_1:output:0model/flatten_1/Const:output:0*
T0*'
_output_shapes
:          Z
model/dot/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :Џ
model/dot/ExpandDims
ExpandDimsmodel/flatten/Reshape:output:0!model/dot/ExpandDims/dim:output:0*
T0*+
_output_shapes
:          \
model/dot/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :А
model/dot/ExpandDims_1
ExpandDims model/flatten_1/Reshape:output:0#model/dot/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          Ќ
model/dot/MatMulBatchMatMulV2model/dot/ExpandDims:output:0model/dot/ExpandDims_1:output:0*
T0*+
_output_shapes
:         f
model/dot/ShapeShapemodel/dot/MatMul:output:0*
T0*
_output_shapes
::ь¤ђ
model/dot/SqueezeSqueezemodel/dot/MatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
i
IdentityIdentitymodel/dot/Squeeze:output:0^NoOp*
T0*'
_output_shapes
:         ј
NoOpNoOp!^model/embedding/embedding_lookup#^model/embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:         :         : : 2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2H
"model/embedding_1/embedding_lookup"model/embedding_1/embedding_lookup:PL
'
_output_shapes
:         
!
_user_specified_name	input_2:P L
'
_output_shapes
:         
!
_user_specified_name	input_1
│	
f
<__inference_dot_layer_call_and_return_conditional_losses_534

inputs
inputs_1
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:          R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :u
ExpandDims_1
ExpandDimsinputs_1ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:          y
MatMulBatchMatMulV2ExpandDims:output:0ExpandDims_1:output:0*
T0*+
_output_shapes
:         R
ShapeShapeMatMul:output:0*
T0*
_output_shapes
::ь¤l
SqueezeSqueezeMatMul:output:0*
T0*'
_output_shapes
:         *
squeeze_dims
X
IdentityIdentitySqueeze:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:          :          :OK
'
_output_shapes
:          
 
_user_specified_nameinputs:O K
'
_output_shapes
:          
 
_user_specified_nameinputs"з
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*с
serving_default¤
;
input_10
serving_default_input_1:0         
;
input_20
serving_default_input_2:0         7
dot0
StatefulPartitionedCall:0         tensorflow/serving/predict:ті
Ы
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer-6
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
х
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
х
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
Ц
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
и
6trace_0
7trace_1
8trace_2
9trace_32╠
#__inference_model_layer_call_fn_576
#__inference_model_layer_call_fn_600
#__inference_model_layer_call_fn_679
#__inference_model_layer_call_fn_689х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z6trace_0z7trace_1z8trace_2z9trace_3
Б
:trace_0
;trace_1
<trace_2
=trace_32И
>__inference_model_layer_call_and_return_conditional_losses_537
>__inference_model_layer_call_and_return_conditional_losses_551
>__inference_model_layer_call_and_return_conditional_losses_717
>__inference_model_layer_call_and_return_conditional_losses_745х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z:trace_0z;trace_1z<trace_2z=trace_3
мB¤
__inference__wrapped_model_473input_1input_2"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ю
>
_variables
?_iterations
@_learning_rate
A_index_dict
B
_momentums
C_velocities
D_update_step_xla"
experimentalOptimizer
,
Eserving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
р
Ktrace_02─
'__inference_embedding_layer_call_fn_752ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zKtrace_0
Ч
Ltrace_02▀
B__inference_embedding_layer_call_and_return_conditional_losses_762ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zLtrace_0
(:&
йД 2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
Rtrace_02к
)__inference_embedding_1_layer_call_fn_769ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zRtrace_0
■
Strace_02р
D__inference_embedding_1_layer_call_and_return_conditional_losses_779ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zStrace_0
*:(
сі 2embedding_1/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
▀
Ytrace_02┬
%__inference_flatten_layer_call_fn_784ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zYtrace_0
Щ
Ztrace_02П
@__inference_flatten_layer_call_and_return_conditional_losses_790ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zZtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
р
`trace_02─
'__inference_flatten_1_layer_call_fn_795ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 z`trace_0
Ч
atrace_02▀
B__inference_flatten_1_layer_call_and_return_conditional_losses_801ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zatrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
█
gtrace_02Й
!__inference_dot_layer_call_fn_807ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zgtrace_0
Ш
htrace_02┘
<__inference_dot_layer_call_and_return_conditional_losses_819ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 zhtrace_0
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
'
i0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЗBы
#__inference_model_layer_call_fn_576input_1input_2"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЗBы
#__inference_model_layer_call_fn_600input_1input_2"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
#__inference_model_layer_call_fn_679inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ШBз
#__inference_model_layer_call_fn_689inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
>__inference_model_layer_call_and_return_conditional_losses_537input_1input_2"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЈBї
>__inference_model_layer_call_and_return_conditional_losses_551input_1input_2"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
>__inference_model_layer_call_and_return_conditional_losses_717inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЉBј
>__inference_model_layer_call_and_return_conditional_losses_745inputs_0inputs_1"х
«▓ф
FullArgSpec)
args!џ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsб
p 

 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
C
?0
j1
k2
l3
m4"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
.
j0
l1"
trackable_list_wrapper
.
k0
m1"
trackable_list_wrapper
х2▓»
д▓б
FullArgSpec*
args"џ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 0
¤B╠
!__inference_signature_wrapper_669input_1input_2"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЛB╬
'__inference_embedding_layer_call_fn_752inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
B__inference_embedding_layer_call_and_return_conditional_losses_762inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
МBл
)__inference_embedding_1_layer_call_fn_769inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЬBв
D__inference_embedding_1_layer_call_and_return_conditional_losses_779inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
¤B╠
%__inference_flatten_layer_call_fn_784inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЖBу
@__inference_flatten_layer_call_and_return_conditional_losses_790inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЛB╬
'__inference_flatten_1_layer_call_fn_795inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ВBж
B__inference_flatten_1_layer_call_and_return_conditional_losses_801inputs"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ОBн
!__inference_dot_layer_call_fn_807inputs_0inputs_1"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ЫB№
<__inference_dot_layer_call_and_return_conditional_losses_819inputs_0inputs_1"ў
Љ▓Ї
FullArgSpec
argsџ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
N
n	variables
o	keras_api
	ptotal
	qcount"
_tf_keras_metric
(:&
йД 2m/embedding/embeddings
(:&
йД 2v/embedding/embeddings
*:(
сі 2m/embedding_1/embeddings
*:(
сі 2v/embedding_1/embeddings
.
p0
q1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
:  (2total
:  (2countг
__inference__wrapped_model_473ЅXбU
NбK
IџF
!і
input_1         
!і
input_2         
ф ")ф&
$
dotі
dot         ╦
<__inference_dot_layer_call_and_return_conditional_losses_819іZбW
PбM
KџH
"і
inputs_0          
"і
inputs_1          
ф ",б)
"і
tensor_0         
џ ц
!__inference_dot_layer_call_fn_807ZбW
PбM
KџH
"і
inputs_0          
"і
inputs_1          
ф "!і
unknown         «
D__inference_embedding_1_layer_call_and_return_conditional_losses_779f/б,
%б"
 і
inputs         
ф "0б-
&і#
tensor_0          
џ ѕ
)__inference_embedding_1_layer_call_fn_769[/б,
%б"
 і
inputs         
ф "%і"
unknown          г
B__inference_embedding_layer_call_and_return_conditional_losses_762f/б,
%б"
 і
inputs         
ф "0б-
&і#
tensor_0          
џ є
'__inference_embedding_layer_call_fn_752[/б,
%б"
 і
inputs         
ф "%і"
unknown          Е
B__inference_flatten_1_layer_call_and_return_conditional_losses_801c3б0
)б&
$і!
inputs          
ф ",б)
"і
tensor_0          
џ Ѓ
'__inference_flatten_1_layer_call_fn_795X3б0
)б&
$і!
inputs          
ф "!і
unknown          Д
@__inference_flatten_layer_call_and_return_conditional_losses_790c3б0
)б&
$і!
inputs          
ф ",б)
"і
tensor_0          
џ Ђ
%__inference_flatten_layer_call_fn_784X3б0
)б&
$і!
inputs          
ф "!і
unknown          О
>__inference_model_layer_call_and_return_conditional_losses_537ћ`б]
VбS
IџF
!і
input_1         
!і
input_2         
p

 
ф ",б)
"і
tensor_0         
џ О
>__inference_model_layer_call_and_return_conditional_losses_551ћ`б]
VбS
IџF
!і
input_1         
!і
input_2         
p 

 
ф ",б)
"і
tensor_0         
џ ┘
>__inference_model_layer_call_and_return_conditional_losses_717ќbб_
XбU
KџH
"і
inputs_0         
"і
inputs_1         
p

 
ф ",б)
"і
tensor_0         
џ ┘
>__inference_model_layer_call_and_return_conditional_losses_745ќbб_
XбU
KџH
"і
inputs_0         
"і
inputs_1         
p 

 
ф ",б)
"і
tensor_0         
џ ▒
#__inference_model_layer_call_fn_576Ѕ`б]
VбS
IџF
!і
input_1         
!і
input_2         
p

 
ф "!і
unknown         ▒
#__inference_model_layer_call_fn_600Ѕ`б]
VбS
IџF
!і
input_1         
!і
input_2         
p 

 
ф "!і
unknown         │
#__inference_model_layer_call_fn_679Іbб_
XбU
KџH
"і
inputs_0         
"і
inputs_1         
p

 
ф "!і
unknown         │
#__inference_model_layer_call_fn_689Іbб_
XбU
KџH
"і
inputs_0         
"і
inputs_1         
p 

 
ф "!і
unknown         └
!__inference_signature_wrapper_669џiбf
б 
_ф\
,
input_1!і
input_1         
,
input_2!і
input_2         ")ф&
$
dotі
dot         