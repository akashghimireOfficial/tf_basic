Ã£
º
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
Á
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8Ñ

flexiblekeras_dense_3/bVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameflexiblekeras_dense_3/b

+flexiblekeras_dense_3/b/Read/ReadVariableOpReadVariableOpflexiblekeras_dense_3/b*
_output_shapes
:*
dtype0

flexiblekeras_dense_3/wVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*(
shared_nameflexiblekeras_dense_3/w

+flexiblekeras_dense_3/w/Read/ReadVariableOpReadVariableOpflexiblekeras_dense_3/w*
_output_shapes

:*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
ó
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1flexiblekeras_dense_3/wflexiblekeras_dense_3/b*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 **
f%R#
!__inference_signature_wrapper_246

NoOpNoOp

ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ä
valueºB· B°
ñ
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature


signatures*

_init_input_shape* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
w
b*

0
1*

0
1*
* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
trace_2
 trace_3* 
* 

!serving_default* 
* 

0
1*

0
1*
* 

"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

'trace_0* 

(trace_0* 
b\
VARIABLE_VALUEflexiblekeras_dense_3/w1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEflexiblekeras_dense_3/b1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+flexiblekeras_dense_3/w/Read/ReadVariableOp+flexiblekeras_dense_3/b/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *%
f R
__inference__traced_save_335
Õ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameflexiblekeras_dense_3/wflexiblekeras_dense_3/b*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *(
f#R!
__inference__traced_restore_351ºµ
¥

!__inference_signature_wrapper_246
input_1
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÂ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *'
f"R 
__inference__wrapped_model_139o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ç	
ò
N__inference_flexiblekeras_dense_3_layer_call_and_return_conditional_losses_157
x0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity¢MatMul/ReadVariableOp¢add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0d
MatMulMatMulxMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
ReluReluadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
Â	
ë
E__inference_simple_model_layer_call_and_return_conditional_losses_235
input_1+
flexiblekeras_dense_3_229:'
flexiblekeras_dense_3_231:
identity¢-flexiblekeras_dense_3/StatefulPartitionedCallª
-flexiblekeras_dense_3/StatefulPartitionedCallStatefulPartitionedCallinput_1flexiblekeras_dense_3_229flexiblekeras_dense_3_231*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *W
fRRP
N__inference_flexiblekeras_dense_3_layer_call_and_return_conditional_losses_157
IdentityIdentity6flexiblekeras_dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
NoOpNoOp.^flexiblekeras_dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2^
-flexiblekeras_dense_3/StatefulPartitionedCall-flexiblekeras_dense_3/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Ò
Ô
__inference__wrapped_model_139
input_1S
Asimple_model_flexiblekeras_dense_3_matmul_readvariableop_resource:L
>simple_model_flexiblekeras_dense_3_add_readvariableop_resource:
identity¢8simple_model/flexiblekeras_dense_3/MatMul/ReadVariableOp¢5simple_model/flexiblekeras_dense_3/add/ReadVariableOpº
8simple_model/flexiblekeras_dense_3/MatMul/ReadVariableOpReadVariableOpAsimple_model_flexiblekeras_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0°
)simple_model/flexiblekeras_dense_3/MatMulMatMulinput_1@simple_model/flexiblekeras_dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
5simple_model/flexiblekeras_dense_3/add/ReadVariableOpReadVariableOp>simple_model_flexiblekeras_dense_3_add_readvariableop_resource*
_output_shapes
:*
dtype0Õ
&simple_model/flexiblekeras_dense_3/addAddV23simple_model/flexiblekeras_dense_3/MatMul:product:0=simple_model/flexiblekeras_dense_3/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'simple_model/flexiblekeras_dense_3/ReluRelu*simple_model/flexiblekeras_dense_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
IdentityIdentity5simple_model/flexiblekeras_dense_3/Relu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
NoOpNoOp9^simple_model/flexiblekeras_dense_3/MatMul/ReadVariableOp6^simple_model/flexiblekeras_dense_3/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2t
8simple_model/flexiblekeras_dense_3/MatMul/ReadVariableOp8simple_model/flexiblekeras_dense_3/MatMul/ReadVariableOp2n
5simple_model/flexiblekeras_dense_3/add/ReadVariableOp5simple_model/flexiblekeras_dense_3/add/ReadVariableOp:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Õ

*__inference_simple_model_layer_call_fn_171
input_1
unknown:
	unknown_0:
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *N
fIRG
E__inference_simple_model_layer_call_and_return_conditional_losses_164o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¿	
ê
E__inference_simple_model_layer_call_and_return_conditional_losses_201

inputs+
flexiblekeras_dense_3_195:'
flexiblekeras_dense_3_197:
identity¢-flexiblekeras_dense_3/StatefulPartitionedCall©
-flexiblekeras_dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsflexiblekeras_dense_3_195flexiblekeras_dense_3_197*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *W
fRRP
N__inference_flexiblekeras_dense_3_layer_call_and_return_conditional_losses_157
IdentityIdentity6flexiblekeras_dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
NoOpNoOp.^flexiblekeras_dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2^
-flexiblekeras_dense_3/StatefulPartitionedCall-flexiblekeras_dense_3/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö
Æ
E__inference_simple_model_layer_call_and_return_conditional_losses_286

inputsF
4flexiblekeras_dense_3_matmul_readvariableop_resource:?
1flexiblekeras_dense_3_add_readvariableop_resource:
identity¢+flexiblekeras_dense_3/MatMul/ReadVariableOp¢(flexiblekeras_dense_3/add/ReadVariableOp 
+flexiblekeras_dense_3/MatMul/ReadVariableOpReadVariableOp4flexiblekeras_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
flexiblekeras_dense_3/MatMulMatMulinputs3flexiblekeras_dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(flexiblekeras_dense_3/add/ReadVariableOpReadVariableOp1flexiblekeras_dense_3_add_readvariableop_resource*
_output_shapes
:*
dtype0®
flexiblekeras_dense_3/addAddV2&flexiblekeras_dense_3/MatMul:product:00flexiblekeras_dense_3/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
flexiblekeras_dense_3/ReluReluflexiblekeras_dense_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(flexiblekeras_dense_3/Relu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp,^flexiblekeras_dense_3/MatMul/ReadVariableOp)^flexiblekeras_dense_3/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2Z
+flexiblekeras_dense_3/MatMul/ReadVariableOp+flexiblekeras_dense_3/MatMul/ReadVariableOp2T
(flexiblekeras_dense_3/add/ReadVariableOp(flexiblekeras_dense_3/add/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
ã
__inference__traced_restore_351
file_prefix:
(assignvariableop_flexiblekeras_dense_3_w:8
*assignvariableop_1_flexiblekeras_dense_3_b:

identity_3¢AssignVariableOp¢AssignVariableOp_1ó
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHv
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B ­
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapes
:::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp(assignvariableop_flexiblekeras_dense_3_wIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp*assignvariableop_1_flexiblekeras_dense_3_bIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 

Identity_2Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_3IdentityIdentity_2:output:0^NoOp_1*
T0*
_output_shapes
: p
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*
_input_shapes
: : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ç	
ò
N__inference_flexiblekeras_dense_3_layer_call_and_return_conditional_losses_306
x0
matmul_readvariableop_resource:)
add_readvariableop_resource:
identity¢MatMul/ReadVariableOp¢add/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0d
MatMulMatMulxMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0l
addAddV2MatMul:product:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
ReluReluadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
NoOpNoOp^MatMul/ReadVariableOp^add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
Õ

*__inference_simple_model_layer_call_fn_217
input_1
unknown:
	unknown_0:
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *N
fIRG
E__inference_simple_model_layer_call_and_return_conditional_losses_201o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¿	
ê
E__inference_simple_model_layer_call_and_return_conditional_losses_164

inputs+
flexiblekeras_dense_3_158:'
flexiblekeras_dense_3_160:
identity¢-flexiblekeras_dense_3/StatefulPartitionedCall©
-flexiblekeras_dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsflexiblekeras_dense_3_158flexiblekeras_dense_3_160*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *W
fRRP
N__inference_flexiblekeras_dense_3_layer_call_and_return_conditional_losses_157
IdentityIdentity6flexiblekeras_dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
NoOpNoOp.^flexiblekeras_dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2^
-flexiblekeras_dense_3/StatefulPartitionedCall-flexiblekeras_dense_3/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ

3__inference_flexiblekeras_dense_3_layer_call_fn_295
x
unknown:
	unknown_0:
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *W
fRRP
N__inference_flexiblekeras_dense_3_layer_call_and_return_conditional_losses_157o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
Ò

*__inference_simple_model_layer_call_fn_255

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *N
fIRG
E__inference_simple_model_layer_call_and_return_conditional_losses_164o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö
Æ
E__inference_simple_model_layer_call_and_return_conditional_losses_275

inputsF
4flexiblekeras_dense_3_matmul_readvariableop_resource:?
1flexiblekeras_dense_3_add_readvariableop_resource:
identity¢+flexiblekeras_dense_3/MatMul/ReadVariableOp¢(flexiblekeras_dense_3/add/ReadVariableOp 
+flexiblekeras_dense_3/MatMul/ReadVariableOpReadVariableOp4flexiblekeras_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
flexiblekeras_dense_3/MatMulMatMulinputs3flexiblekeras_dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(flexiblekeras_dense_3/add/ReadVariableOpReadVariableOp1flexiblekeras_dense_3_add_readvariableop_resource*
_output_shapes
:*
dtype0®
flexiblekeras_dense_3/addAddV2&flexiblekeras_dense_3/MatMul:product:00flexiblekeras_dense_3/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
flexiblekeras_dense_3/ReluReluflexiblekeras_dense_3/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
IdentityIdentity(flexiblekeras_dense_3/Relu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp,^flexiblekeras_dense_3/MatMul/ReadVariableOp)^flexiblekeras_dense_3/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2Z
+flexiblekeras_dense_3/MatMul/ReadVariableOp+flexiblekeras_dense_3/MatMul/ReadVariableOp2T
(flexiblekeras_dense_3/add/ReadVariableOp(flexiblekeras_dense_3/add/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò

*__inference_simple_model_layer_call_fn_264

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallè
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *N
fIRG
E__inference_simple_model_layer_call_and_return_conditional_losses_201o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â	
ë
E__inference_simple_model_layer_call_and_return_conditional_losses_226
input_1+
flexiblekeras_dense_3_220:'
flexiblekeras_dense_3_222:
identity¢-flexiblekeras_dense_3/StatefulPartitionedCallª
-flexiblekeras_dense_3/StatefulPartitionedCallStatefulPartitionedCallinput_1flexiblekeras_dense_3_220flexiblekeras_dense_3_222*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*;
config_proto+)

CPU

GPU2*0J
	
 ÀE 8 *W
fRRP
N__inference_flexiblekeras_dense_3_layer_call_and_return_conditional_losses_157
IdentityIdentity6flexiblekeras_dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
NoOpNoOp.^flexiblekeras_dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 2^
-flexiblekeras_dense_3/StatefulPartitionedCall-flexiblekeras_dense_3/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
«
Ù
__inference__traced_save_335
file_prefix6
2savev2_flexiblekeras_dense_3_w_read_readvariableop6
2savev2_flexiblekeras_dense_3_b_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ð
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB1layer_with_weights-0/w/.ATTRIBUTES/VARIABLE_VALUEB1layer_with_weights-0/b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHs
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_flexiblekeras_dense_3_w_read_readvariableop2savev2_flexiblekeras_dense_3_b_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*'
_input_shapes
: ::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: "µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¸
serving_default¤
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿI
flexiblekeras_dense_30
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ùA

layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature


signatures"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
³
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
w
b"
_tf_keras_layer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ý
trace_0
trace_1
trace_2
trace_32ò
*__inference_simple_model_layer_call_fn_171
*__inference_simple_model_layer_call_fn_255
*__inference_simple_model_layer_call_fn_264
*__inference_simple_model_layer_call_fn_217¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
É
trace_0
trace_1
trace_2
 trace_32Þ
E__inference_simple_model_layer_call_and_return_conditional_losses_275
E__inference_simple_model_layer_call_and_return_conditional_losses_286
E__inference_simple_model_layer_call_and_return_conditional_losses_226
E__inference_simple_model_layer_call_and_return_conditional_losses_235¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1ztrace_2z trace_3
ÉBÆ
__inference__wrapped_model_139input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
!serving_default"
signature_map
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ò
'trace_02Õ
3__inference_flexiblekeras_dense_3_layer_call_fn_295
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z'trace_0

(trace_02ð
N__inference_flexiblekeras_dense_3_layer_call_and_return_conditional_losses_306
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z(trace_0
):'2flexiblekeras_dense_3/w
%:#2flexiblekeras_dense_3/b
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
üBù
*__inference_simple_model_layer_call_fn_171input_1"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
*__inference_simple_model_layer_call_fn_255inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
*__inference_simple_model_layer_call_fn_264inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
üBù
*__inference_simple_model_layer_call_fn_217input_1"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
E__inference_simple_model_layer_call_and_return_conditional_losses_275inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
E__inference_simple_model_layer_call_and_return_conditional_losses_286inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
E__inference_simple_model_layer_call_and_return_conditional_losses_226input_1"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
E__inference_simple_model_layer_call_and_return_conditional_losses_235input_1"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÈBÅ
!__inference_signature_wrapper_246input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ÝBÚ
3__inference_flexiblekeras_dense_3_layer_call_fn_295x"
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
N__inference_flexiblekeras_dense_3_layer_call_and_return_conditional_losses_306x"
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ¨
__inference__wrapped_model_1390¢-
&¢#
!
input_1ÿÿÿÿÿÿÿÿÿ
ª "MªJ
H
flexiblekeras_dense_3/,
flexiblekeras_dense_3ÿÿÿÿÿÿÿÿÿ©
N__inference_flexiblekeras_dense_3_layer_call_and_return_conditional_losses_306W*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
3__inference_flexiblekeras_dense_3_layer_call_fn_295J*¢'
 ¢

xÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¶
!__inference_signature_wrapper_246;¢8
¢ 
1ª.
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ"MªJ
H
flexiblekeras_dense_3/,
flexiblekeras_dense_3ÿÿÿÿÿÿÿÿÿ®
E__inference_simple_model_layer_call_and_return_conditional_losses_226e8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ®
E__inference_simple_model_layer_call_and_return_conditional_losses_235e8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ­
E__inference_simple_model_layer_call_and_return_conditional_losses_275d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ­
E__inference_simple_model_layer_call_and_return_conditional_losses_286d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_simple_model_layer_call_fn_171X8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_simple_model_layer_call_fn_217X8¢5
.¢+
!
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_simple_model_layer_call_fn_255W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_simple_model_layer_call_fn_264W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ