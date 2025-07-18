��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.18.02v2.18.0-rc2-4-g6550e4bd8028۞
�
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_1/bias/*
dtype0*
shape:*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_1/kernel/*
dtype0*
shape:	�**
shared_namesequential/dense_1/kernel
�
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_output_shapes
:	�*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_class
loc:@Variable_1*
_output_shapes
:	�*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:	�*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	�*
dtype0
�
sequential/dense/biasVarHandleOp*
_output_shapes
: *&

debug_namesequential/dense/bias/*
dtype0*
shape:�*&
shared_namesequential/dense/bias
|
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes	
:�*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpsequential/dense/bias*
_class
loc:@Variable_2*
_output_shapes	
:�*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:�*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
f
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes	
:�*
dtype0
�
sequential/dense/kernelVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense/kernel/*
dtype0*
shape:
��*(
shared_namesequential/dense/kernel
�
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel* 
_output_shapes
:
��*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential/dense/kernel*
_class
loc:@Variable_3* 
_output_shapes
:
��*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:
��*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
k
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3* 
_output_shapes
:
��*
dtype0
�
sequential/conv2d_3/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_3/bias/*
dtype0*
shape:�*)
shared_namesequential/conv2d_3/bias
�
,sequential/conv2d_3/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_3/bias*
_output_shapes	
:�*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_3/bias*
_class
loc:@Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�
sequential/conv2d_3/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_3/kernel/*
dtype0*
shape:��*+
shared_namesequential/conv2d_3/kernel
�
.sequential/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_3/kernel*(
_output_shapes
:��*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_3/kernel*
_class
loc:@Variable_5*(
_output_shapes
:��*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:��*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
s
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*(
_output_shapes
:��*
dtype0
�
sequential/conv2d_2/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_2/bias/*
dtype0*
shape:�*)
shared_namesequential/conv2d_2/bias
�
,sequential/conv2d_2/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_2/bias*
_output_shapes	
:�*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_2/bias*
_class
loc:@Variable_6*
_output_shapes	
:�*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:�*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
f
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:�*
dtype0
�
sequential/conv2d_2/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_2/kernel/*
dtype0*
shape:@�*+
shared_namesequential/conv2d_2/kernel
�
.sequential/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_2/kernel*'
_output_shapes
:@�*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_2/kernel*
_class
loc:@Variable_7*'
_output_shapes
:@�*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:@�*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
r
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*'
_output_shapes
:@�*
dtype0
�
sequential/conv2d_1/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_1/bias/*
dtype0*
shape:@*)
shared_namesequential/conv2d_1/bias
�
,sequential/conv2d_1/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_1/bias*
_output_shapes
:@*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_1/bias*
_class
loc:@Variable_8*
_output_shapes
:@*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:@*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:@*
dtype0
�
sequential/conv2d_1/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_1/kernel/*
dtype0*
shape: @*+
shared_namesequential/conv2d_1/kernel
�
.sequential/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_1/kernel*
_class
loc:@Variable_9*&
_output_shapes
: @*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape: @*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
q
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*&
_output_shapes
: @*
dtype0
�
sequential/conv2d/biasVarHandleOp*
_output_shapes
: *'

debug_namesequential/conv2d/bias/*
dtype0*
shape: *'
shared_namesequential/conv2d/bias
}
*sequential/conv2d/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d/bias*
_output_shapes
: *
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpsequential/conv2d/bias*
_class
loc:@Variable_10*
_output_shapes
: *
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape: *
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
g
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
: *
dtype0
�
sequential/conv2d/kernelVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d/kernel/*
dtype0*
shape: *)
shared_namesequential/conv2d/kernel
�
,sequential/conv2d/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d/kernel*&
_output_shapes
: *
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpsequential/conv2d/kernel*
_class
loc:@Variable_11*&
_output_shapes
: *
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape: *
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
s
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*&
_output_shapes
: *
dtype0
�
adam/learning_rateVarHandleOp*
_output_shapes
: *#

debug_nameadam/learning_rate/*
dtype0*
shape: *#
shared_nameadam/learning_rate
q
&adam/learning_rate/Read/ReadVariableOpReadVariableOpadam/learning_rate*
_output_shapes
: *
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOpadam/learning_rate*
_class
loc:@Variable_12*
_output_shapes
: *
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape: *
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
c
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
: *
dtype0
�
adam/iterationVarHandleOp*
_output_shapes
: *

debug_nameadam/iteration/*
dtype0	*
shape: *
shared_nameadam/iteration
i
"adam/iteration/Read/ReadVariableOpReadVariableOpadam/iteration*
_output_shapes
: *
dtype0	
�
&Variable_13/Initializer/ReadVariableOpReadVariableOpadam/iteration*
_class
loc:@Variable_13*
_output_shapes
: *
dtype0	
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0	*
shape: *
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0	
c
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
: *
dtype0	
�
serving_default_inputsPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputssequential/conv2d/kernelsequential/conv2d/biassequential/conv2d_1/kernelsequential/conv2d_1/biassequential/conv2d_2/kernelsequential/conv2d_2/biassequential/conv2d_3/kernelsequential/conv2d_3/biassequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*5
config_proto%#

CPU

GPU2*0J 8� �J *=
f8R6
4__inference_signature_wrapper_serving_default_128855

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures*
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature*
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities*

trace_0* 
* 
* 
* 
* 
* 
b
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12*
* 

+serving_default* 
* 
* 
* 
* 
* 
b
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12*
b
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12*
* 
* 

,trace_0* 

0
1*
* 
* 
UO
VARIABLE_VALUEVariable_130optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEVariable_123optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
]
-_inbound_nodes
._outbound_nodes
/_losses
0	_loss_ids
1_losses_override* 
�
2_kernel
3bias
4_inbound_nodes
5_outbound_nodes
6_losses
7	_loss_ids
8_losses_override
9_build_shapes_dict*
]
:_inbound_nodes
;_outbound_nodes
<_losses
=	_loss_ids
>_losses_override* 
�
?_kernel
@bias
A_inbound_nodes
B_outbound_nodes
C_losses
D	_loss_ids
E_losses_override
F_build_shapes_dict*
]
G_inbound_nodes
H_outbound_nodes
I_losses
J	_loss_ids
K_losses_override* 
�
L_kernel
Mbias
N_inbound_nodes
O_outbound_nodes
P_losses
Q	_loss_ids
R_losses_override
S_build_shapes_dict*
]
T_inbound_nodes
U_outbound_nodes
V_losses
W	_loss_ids
X_losses_override* 
�
Y_kernel
Zbias
[_inbound_nodes
\_outbound_nodes
]_losses
^	_loss_ids
__losses_override
`_build_shapes_dict*
]
a_inbound_nodes
b_outbound_nodes
c_losses
d	_loss_ids
e_losses_override* 
]
f_inbound_nodes
g_outbound_nodes
h_losses
i	_loss_ids
j_losses_override* 
�
k_kernel
lbias
m_inbound_nodes
n_outbound_nodes
o_losses
p	_loss_ids
q_losses_override
r_build_shapes_dict*
]
s_inbound_nodes
t_outbound_nodes
u_losses
v	_loss_ids
w_losses_override* 
�
x_kernel
ybias
z_inbound_nodes
{_outbound_nodes
|_losses
}	_loss_ids
~_losses_override
_build_shapes_dict*
* 
* 
* 
* 
* 
* 
* 
QK
VARIABLE_VALUEVariable_11,_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEVariable_10)_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
PJ
VARIABLE_VALUE
Variable_9,_layers/3/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE
Variable_8)_layers/3/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
PJ
VARIABLE_VALUE
Variable_7,_layers/5/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE
Variable_6)_layers/5/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
PJ
VARIABLE_VALUE
Variable_5,_layers/7/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE
Variable_4)_layers/7/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
QK
VARIABLE_VALUE
Variable_3-_layers/10/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Variable_2*_layers/10/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
QK
VARIABLE_VALUE
Variable_1-_layers/12/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable*_layers/12/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *5
config_proto%#

CPU

GPU2*0J 8� �J *(
f#R!
__inference__traced_save_129081
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *5
config_proto%#

CPU

GPU2*0J 8� �J *+
f&R$
"__inference__traced_restore_129132؆
�f
�
"__inference_serving_default_128919

inputsV
<functional_23_1_conv2d_1_convolution_readvariableop_resource: F
8functional_23_1_conv2d_1_reshape_readvariableop_resource: X
>functional_23_1_conv2d_1_2_convolution_readvariableop_resource: @H
:functional_23_1_conv2d_1_2_reshape_readvariableop_resource:@Y
>functional_23_1_conv2d_2_1_convolution_readvariableop_resource:@�I
:functional_23_1_conv2d_2_1_reshape_readvariableop_resource:	�Z
>functional_23_1_conv2d_3_1_convolution_readvariableop_resource:��I
:functional_23_1_conv2d_3_1_reshape_readvariableop_resource:	�H
4functional_23_1_dense_1_cast_readvariableop_resource:
��F
7functional_23_1_dense_1_biasadd_readvariableop_resource:	�I
6functional_23_1_dense_1_2_cast_readvariableop_resource:	�G
9functional_23_1_dense_1_2_biasadd_readvariableop_resource:
identity��/functional_23_1/conv2d_1/Reshape/ReadVariableOp�3functional_23_1/conv2d_1/convolution/ReadVariableOp�1functional_23_1/conv2d_1_2/Reshape/ReadVariableOp�5functional_23_1/conv2d_1_2/convolution/ReadVariableOp�1functional_23_1/conv2d_2_1/Reshape/ReadVariableOp�5functional_23_1/conv2d_2_1/convolution/ReadVariableOp�1functional_23_1/conv2d_3_1/Reshape/ReadVariableOp�5functional_23_1/conv2d_3_1/convolution/ReadVariableOp�.functional_23_1/dense_1/BiasAdd/ReadVariableOp�+functional_23_1/dense_1/Cast/ReadVariableOp�0functional_23_1/dense_1_2/BiasAdd/ReadVariableOp�-functional_23_1/dense_1_2/Cast/ReadVariableOp�
3functional_23_1/conv2d_1/convolution/ReadVariableOpReadVariableOp<functional_23_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
$functional_23_1/conv2d_1/convolutionConv2Dinputs;functional_23_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
/functional_23_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp8functional_23_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0
&functional_23_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
 functional_23_1/conv2d_1/ReshapeReshape7functional_23_1/conv2d_1/Reshape/ReadVariableOp:value:0/functional_23_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
: {
 functional_23_1/conv2d_1/SqueezeSqueeze)functional_23_1/conv2d_1/Reshape:output:0*
T0*
_output_shapes
: �
 functional_23_1/conv2d_1/BiasAddBiasAdd-functional_23_1/conv2d_1/convolution:output:0)functional_23_1/conv2d_1/Squeeze:output:0*
T0*1
_output_shapes
:����������� �
functional_23_1/conv2d_1/ReluRelu)functional_23_1/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
)functional_23_1/max_pooling2d_1/MaxPool2dMaxPool+functional_23_1/conv2d_1/Relu:activations:0*/
_output_shapes
:���������oo *
ksize
*
paddingVALID*
strides
�
5functional_23_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp>functional_23_1_conv2d_1_2_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
&functional_23_1/conv2d_1_2/convolutionConv2D2functional_23_1/max_pooling2d_1/MaxPool2d:output:0=functional_23_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm@*
paddingVALID*
strides
�
1functional_23_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp:functional_23_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
(functional_23_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
"functional_23_1/conv2d_1_2/ReshapeReshape9functional_23_1/conv2d_1_2/Reshape/ReadVariableOp:value:01functional_23_1/conv2d_1_2/Reshape/shape:output:0*
T0*&
_output_shapes
:@
"functional_23_1/conv2d_1_2/SqueezeSqueeze+functional_23_1/conv2d_1_2/Reshape:output:0*
T0*
_output_shapes
:@�
"functional_23_1/conv2d_1_2/BiasAddBiasAdd/functional_23_1/conv2d_1_2/convolution:output:0+functional_23_1/conv2d_1_2/Squeeze:output:0*
T0*/
_output_shapes
:���������mm@�
functional_23_1/conv2d_1_2/ReluRelu+functional_23_1/conv2d_1_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������mm@�
+functional_23_1/max_pooling2d_1_2/MaxPool2dMaxPool-functional_23_1/conv2d_1_2/Relu:activations:0*/
_output_shapes
:���������66@*
ksize
*
paddingVALID*
strides
�
5functional_23_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp>functional_23_1_conv2d_2_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&functional_23_1/conv2d_2_1/convolutionConv2D4functional_23_1/max_pooling2d_1_2/MaxPool2d:output:0=functional_23_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������44�*
paddingVALID*
strides
�
1functional_23_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp:functional_23_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(functional_23_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
"functional_23_1/conv2d_2_1/ReshapeReshape9functional_23_1/conv2d_2_1/Reshape/ReadVariableOp:value:01functional_23_1/conv2d_2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
"functional_23_1/conv2d_2_1/SqueezeSqueeze+functional_23_1/conv2d_2_1/Reshape:output:0*
T0*
_output_shapes	
:��
"functional_23_1/conv2d_2_1/BiasAddBiasAdd/functional_23_1/conv2d_2_1/convolution:output:0+functional_23_1/conv2d_2_1/Squeeze:output:0*
T0*0
_output_shapes
:���������44��
functional_23_1/conv2d_2_1/ReluRelu+functional_23_1/conv2d_2_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������44��
+functional_23_1/max_pooling2d_2_1/MaxPool2dMaxPool-functional_23_1/conv2d_2_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
5functional_23_1/conv2d_3_1/convolution/ReadVariableOpReadVariableOp>functional_23_1_conv2d_3_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
&functional_23_1/conv2d_3_1/convolutionConv2D4functional_23_1/max_pooling2d_2_1/MaxPool2d:output:0=functional_23_1/conv2d_3_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
1functional_23_1/conv2d_3_1/Reshape/ReadVariableOpReadVariableOp:functional_23_1_conv2d_3_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(functional_23_1/conv2d_3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
"functional_23_1/conv2d_3_1/ReshapeReshape9functional_23_1/conv2d_3_1/Reshape/ReadVariableOp:value:01functional_23_1/conv2d_3_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
"functional_23_1/conv2d_3_1/SqueezeSqueeze+functional_23_1/conv2d_3_1/Reshape:output:0*
T0*
_output_shapes	
:��
"functional_23_1/conv2d_3_1/BiasAddBiasAdd/functional_23_1/conv2d_3_1/convolution:output:0+functional_23_1/conv2d_3_1/Squeeze:output:0*
T0*0
_output_shapes
:�����������
functional_23_1/conv2d_3_1/ReluRelu+functional_23_1/conv2d_3_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
+functional_23_1/max_pooling2d_3_1/MaxPool2dMaxPool-functional_23_1/conv2d_3_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
Afunctional_23_1/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
/functional_23_1/global_average_pooling2d_1/MeanMean4functional_23_1/max_pooling2d_3_1/MaxPool2d:output:0Jfunctional_23_1/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
+functional_23_1/dense_1/Cast/ReadVariableOpReadVariableOp4functional_23_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_23_1/dense_1/MatMulMatMul8functional_23_1/global_average_pooling2d_1/Mean:output:03functional_23_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.functional_23_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp7functional_23_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_23_1/dense_1/BiasAddBiasAdd(functional_23_1/dense_1/MatMul:product:06functional_23_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
functional_23_1/dense_1/ReluRelu(functional_23_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
-functional_23_1/dense_1_2/Cast/ReadVariableOpReadVariableOp6functional_23_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 functional_23_1/dense_1_2/MatMulMatMul*functional_23_1/dense_1/Relu:activations:05functional_23_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0functional_23_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOp9functional_23_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!functional_23_1/dense_1_2/BiasAddBiasAdd*functional_23_1/dense_1_2/MatMul:product:08functional_23_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!functional_23_1/dense_1_2/SoftmaxSoftmax*functional_23_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+functional_23_1/dense_1_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp0^functional_23_1/conv2d_1/Reshape/ReadVariableOp4^functional_23_1/conv2d_1/convolution/ReadVariableOp2^functional_23_1/conv2d_1_2/Reshape/ReadVariableOp6^functional_23_1/conv2d_1_2/convolution/ReadVariableOp2^functional_23_1/conv2d_2_1/Reshape/ReadVariableOp6^functional_23_1/conv2d_2_1/convolution/ReadVariableOp2^functional_23_1/conv2d_3_1/Reshape/ReadVariableOp6^functional_23_1/conv2d_3_1/convolution/ReadVariableOp/^functional_23_1/dense_1/BiasAdd/ReadVariableOp,^functional_23_1/dense_1/Cast/ReadVariableOp1^functional_23_1/dense_1_2/BiasAdd/ReadVariableOp.^functional_23_1/dense_1_2/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2b
/functional_23_1/conv2d_1/Reshape/ReadVariableOp/functional_23_1/conv2d_1/Reshape/ReadVariableOp2j
3functional_23_1/conv2d_1/convolution/ReadVariableOp3functional_23_1/conv2d_1/convolution/ReadVariableOp2f
1functional_23_1/conv2d_1_2/Reshape/ReadVariableOp1functional_23_1/conv2d_1_2/Reshape/ReadVariableOp2n
5functional_23_1/conv2d_1_2/convolution/ReadVariableOp5functional_23_1/conv2d_1_2/convolution/ReadVariableOp2f
1functional_23_1/conv2d_2_1/Reshape/ReadVariableOp1functional_23_1/conv2d_2_1/Reshape/ReadVariableOp2n
5functional_23_1/conv2d_2_1/convolution/ReadVariableOp5functional_23_1/conv2d_2_1/convolution/ReadVariableOp2f
1functional_23_1/conv2d_3_1/Reshape/ReadVariableOp1functional_23_1/conv2d_3_1/Reshape/ReadVariableOp2n
5functional_23_1/conv2d_3_1/convolution/ReadVariableOp5functional_23_1/conv2d_3_1/convolution/ReadVariableOp2`
.functional_23_1/dense_1/BiasAdd/ReadVariableOp.functional_23_1/dense_1/BiasAdd/ReadVariableOp2Z
+functional_23_1/dense_1/Cast/ReadVariableOp+functional_23_1/dense_1/Cast/ReadVariableOp2d
0functional_23_1/dense_1_2/BiasAdd/ReadVariableOp0functional_23_1/dense_1_2/BiasAdd/ReadVariableOp2^
-functional_23_1/dense_1_2/Cast/ReadVariableOp-functional_23_1/dense_1_2/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�b
�
"__inference_serving_default_128825

inputsS
9sequential_1_conv2d_1_convolution_readvariableop_resource: C
5sequential_1_conv2d_1_reshape_readvariableop_resource: U
;sequential_1_conv2d_1_2_convolution_readvariableop_resource: @E
7sequential_1_conv2d_1_2_reshape_readvariableop_resource:@V
;sequential_1_conv2d_2_1_convolution_readvariableop_resource:@�F
7sequential_1_conv2d_2_1_reshape_readvariableop_resource:	�W
;sequential_1_conv2d_3_1_convolution_readvariableop_resource:��F
7sequential_1_conv2d_3_1_reshape_readvariableop_resource:	�E
1sequential_1_dense_1_cast_readvariableop_resource:
��C
4sequential_1_dense_1_biasadd_readvariableop_resource:	�F
3sequential_1_dense_1_2_cast_readvariableop_resource:	�D
6sequential_1_dense_1_2_biasadd_readvariableop_resource:
identity��,sequential_1/conv2d_1/Reshape/ReadVariableOp�0sequential_1/conv2d_1/convolution/ReadVariableOp�.sequential_1/conv2d_1_2/Reshape/ReadVariableOp�2sequential_1/conv2d_1_2/convolution/ReadVariableOp�.sequential_1/conv2d_2_1/Reshape/ReadVariableOp�2sequential_1/conv2d_2_1/convolution/ReadVariableOp�.sequential_1/conv2d_3_1/Reshape/ReadVariableOp�2sequential_1/conv2d_3_1/convolution/ReadVariableOp�+sequential_1/dense_1/BiasAdd/ReadVariableOp�(sequential_1/dense_1/Cast/ReadVariableOp�-sequential_1/dense_1_2/BiasAdd/ReadVariableOp�*sequential_1/dense_1_2/Cast/ReadVariableOp�
0sequential_1/conv2d_1/convolution/ReadVariableOpReadVariableOp9sequential_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
!sequential_1/conv2d_1/convolutionConv2Dinputs8sequential_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
,sequential_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0|
#sequential_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
sequential_1/conv2d_1/ReshapeReshape4sequential_1/conv2d_1/Reshape/ReadVariableOp:value:0,sequential_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
: u
sequential_1/conv2d_1/SqueezeSqueeze&sequential_1/conv2d_1/Reshape:output:0*
T0*
_output_shapes
: �
sequential_1/conv2d_1/BiasAddBiasAdd*sequential_1/conv2d_1/convolution:output:0&sequential_1/conv2d_1/Squeeze:output:0*
T0*1
_output_shapes
:����������� �
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
&sequential_1/max_pooling2d_1/MaxPool2dMaxPool(sequential_1/conv2d_1/Relu:activations:0*/
_output_shapes
:���������oo *
ksize
*
paddingVALID*
strides
�
2sequential_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_1_2_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
#sequential_1/conv2d_1_2/convolutionConv2D/sequential_1/max_pooling2d_1/MaxPool2d:output:0:sequential_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������mm@*
paddingVALID*
strides
�
.sequential_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0~
%sequential_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
sequential_1/conv2d_1_2/ReshapeReshape6sequential_1/conv2d_1_2/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_1_2/Reshape/shape:output:0*
T0*&
_output_shapes
:@y
sequential_1/conv2d_1_2/SqueezeSqueeze(sequential_1/conv2d_1_2/Reshape:output:0*
T0*
_output_shapes
:@�
sequential_1/conv2d_1_2/BiasAddBiasAdd,sequential_1/conv2d_1_2/convolution:output:0(sequential_1/conv2d_1_2/Squeeze:output:0*
T0*/
_output_shapes
:���������mm@�
sequential_1/conv2d_1_2/ReluRelu(sequential_1/conv2d_1_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������mm@�
(sequential_1/max_pooling2d_1_2/MaxPool2dMaxPool*sequential_1/conv2d_1_2/Relu:activations:0*/
_output_shapes
:���������66@*
ksize
*
paddingVALID*
strides
�
2sequential_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_2_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
#sequential_1/conv2d_2_1/convolutionConv2D1sequential_1/max_pooling2d_1_2/MaxPool2d:output:0:sequential_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������44�*
paddingVALID*
strides
�
.sequential_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%sequential_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
sequential_1/conv2d_2_1/ReshapeReshape6sequential_1/conv2d_2_1/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:�z
sequential_1/conv2d_2_1/SqueezeSqueeze(sequential_1/conv2d_2_1/Reshape:output:0*
T0*
_output_shapes	
:��
sequential_1/conv2d_2_1/BiasAddBiasAdd,sequential_1/conv2d_2_1/convolution:output:0(sequential_1/conv2d_2_1/Squeeze:output:0*
T0*0
_output_shapes
:���������44��
sequential_1/conv2d_2_1/ReluRelu(sequential_1/conv2d_2_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������44��
(sequential_1/max_pooling2d_2_1/MaxPool2dMaxPool*sequential_1/conv2d_2_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
2sequential_1/conv2d_3_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_3_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
#sequential_1/conv2d_3_1/convolutionConv2D1sequential_1/max_pooling2d_2_1/MaxPool2d:output:0:sequential_1/conv2d_3_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
.sequential_1/conv2d_3_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_3_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%sequential_1/conv2d_3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
sequential_1/conv2d_3_1/ReshapeReshape6sequential_1/conv2d_3_1/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_3_1/Reshape/shape:output:0*
T0*'
_output_shapes
:�z
sequential_1/conv2d_3_1/SqueezeSqueeze(sequential_1/conv2d_3_1/Reshape:output:0*
T0*
_output_shapes	
:��
sequential_1/conv2d_3_1/BiasAddBiasAdd,sequential_1/conv2d_3_1/convolution:output:0(sequential_1/conv2d_3_1/Squeeze:output:0*
T0*0
_output_shapes
:�����������
sequential_1/conv2d_3_1/ReluRelu(sequential_1/conv2d_3_1/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
(sequential_1/max_pooling2d_3_1/MaxPool2dMaxPool*sequential_1/conv2d_3_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
>sequential_1/global_average_pooling2d_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
,sequential_1/global_average_pooling2d_1/MeanMean1sequential_1/max_pooling2d_3_1/MaxPool2d:output:0Gsequential_1/global_average_pooling2d_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
(sequential_1/dense_1/Cast/ReadVariableOpReadVariableOp1sequential_1_dense_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_1/dense_1/MatMulMatMul5sequential_1/global_average_pooling2d_1/Mean:output:00sequential_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3sequential_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_1/dense_1_2/MatMulMatMul'sequential_1/dense_1/Relu:activations:02sequential_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/dense_1_2/BiasAddBiasAdd'sequential_1/dense_1_2/MatMul:product:05sequential_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_1/dense_1_2/SoftmaxSoftmax'sequential_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������w
IdentityIdentity(sequential_1/dense_1_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^sequential_1/conv2d_1/Reshape/ReadVariableOp1^sequential_1/conv2d_1/convolution/ReadVariableOp/^sequential_1/conv2d_1_2/Reshape/ReadVariableOp3^sequential_1/conv2d_1_2/convolution/ReadVariableOp/^sequential_1/conv2d_2_1/Reshape/ReadVariableOp3^sequential_1/conv2d_2_1/convolution/ReadVariableOp/^sequential_1/conv2d_3_1/Reshape/ReadVariableOp3^sequential_1/conv2d_3_1/convolution/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp)^sequential_1/dense_1/Cast/ReadVariableOp.^sequential_1/dense_1_2/BiasAdd/ReadVariableOp+^sequential_1/dense_1_2/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 2\
,sequential_1/conv2d_1/Reshape/ReadVariableOp,sequential_1/conv2d_1/Reshape/ReadVariableOp2d
0sequential_1/conv2d_1/convolution/ReadVariableOp0sequential_1/conv2d_1/convolution/ReadVariableOp2`
.sequential_1/conv2d_1_2/Reshape/ReadVariableOp.sequential_1/conv2d_1_2/Reshape/ReadVariableOp2h
2sequential_1/conv2d_1_2/convolution/ReadVariableOp2sequential_1/conv2d_1_2/convolution/ReadVariableOp2`
.sequential_1/conv2d_2_1/Reshape/ReadVariableOp.sequential_1/conv2d_2_1/Reshape/ReadVariableOp2h
2sequential_1/conv2d_2_1/convolution/ReadVariableOp2sequential_1/conv2d_2_1/convolution/ReadVariableOp2`
.sequential_1/conv2d_3_1/Reshape/ReadVariableOp.sequential_1/conv2d_3_1/Reshape/ReadVariableOp2h
2sequential_1/conv2d_3_1/convolution/ReadVariableOp2sequential_1/conv2d_3_1/convolution/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2T
(sequential_1/dense_1/Cast/ReadVariableOp(sequential_1/dense_1/Cast/ReadVariableOp2^
-sequential_1/dense_1_2/BiasAdd/ReadVariableOp-sequential_1/dense_1_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1_2/Cast/ReadVariableOp*sequential_1/dense_1_2/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�B
�
"__inference__traced_restore_129132
file_prefix&
assignvariableop_variable_13:	 (
assignvariableop_1_variable_12: 8
assignvariableop_2_variable_11: ,
assignvariableop_3_variable_10: 7
assignvariableop_4_variable_9: @+
assignvariableop_5_variable_8:@8
assignvariableop_6_variable_7:@�,
assignvariableop_7_variable_6:	�9
assignvariableop_8_variable_5:��,
assignvariableop_9_variable_4:	�2
assignvariableop_10_variable_3:
��-
assignvariableop_11_variable_2:	�1
assignvariableop_12_variable_1:	�*
assignvariableop_13_variable:
identity_15��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB,_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/3/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/3/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/5/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/5/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/7/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/7/bias/.ATTRIBUTES/VARIABLE_VALUEB-_layers/10/_kernel/.ATTRIBUTES/VARIABLE_VALUEB*_layers/10/bias/.ATTRIBUTES/VARIABLE_VALUEB-_layers/12/_kernel/.ATTRIBUTES/VARIABLE_VALUEB*_layers/12/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_13Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_12Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_11Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_10Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_9Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_8Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_7Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_6Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_5Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_4Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_3Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_2Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variableIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_15Identity_15:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*
&
$
_user_specified_name
Variable_4:*	&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�m
�
__inference__traced_save_129081
file_prefix,
"read_disablecopyonread_variable_13:	 .
$read_1_disablecopyonread_variable_12: >
$read_2_disablecopyonread_variable_11: 2
$read_3_disablecopyonread_variable_10: =
#read_4_disablecopyonread_variable_9: @1
#read_5_disablecopyonread_variable_8:@>
#read_6_disablecopyonread_variable_7:@�2
#read_7_disablecopyonread_variable_6:	�?
#read_8_disablecopyonread_variable_5:��2
#read_9_disablecopyonread_variable_4:	�8
$read_10_disablecopyonread_variable_3:
��3
$read_11_disablecopyonread_variable_2:	�7
$read_12_disablecopyonread_variable_1:	�0
"read_13_disablecopyonread_variable:
savev2_const
identity_29��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_13*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_13^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_12*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_12^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0V

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_11*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_11^Read_2/DisableCopyOnRead*&
_output_shapes
: *
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_10*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_10^Read_3/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_9*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_9^Read_4/DisableCopyOnRead*&
_output_shapes
: @*
dtype0f

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*&
_output_shapes
: @k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
: @h
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_8*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_8^Read_5/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_7*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_7^Read_6/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0h
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�n
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_6*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_6^Read_7/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:�h
Read_8/DisableCopyOnReadDisableCopyOnRead#read_8_disablecopyonread_variable_5*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp#read_8_disablecopyonread_variable_5^Read_8/DisableCopyOnRead*(
_output_shapes
:��*
dtype0i
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:��o
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*(
_output_shapes
:��h
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_variable_4*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_variable_4^Read_9/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_10/DisableCopyOnReadDisableCopyOnRead$read_10_disablecopyonread_variable_3*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp$read_10_disablecopyonread_variable_3^Read_10/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��j
Read_11/DisableCopyOnReadDisableCopyOnRead$read_11_disablecopyonread_variable_2*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp$read_11_disablecopyonread_variable_2^Read_11/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_12/DisableCopyOnReadDisableCopyOnRead$read_12_disablecopyonread_variable_1*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp$read_12_disablecopyonread_variable_1^Read_12/DisableCopyOnRead*
_output_shapes
:	�*
dtype0a
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
:	�f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Read_13/DisableCopyOnReadDisableCopyOnRead"read_13_disablecopyonread_variable*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp"read_13_disablecopyonread_variable^Read_13/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB,_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/3/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/3/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/5/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/5/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/7/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/7/bias/.ATTRIBUTES/VARIABLE_VALUEB-_layers/10/_kernel/.ATTRIBUTES/VARIABLE_VALUEB*_layers/10/bias/.ATTRIBUTES/VARIABLE_VALUEB-_layers/12/_kernel/.ATTRIBUTES/VARIABLE_VALUEB*_layers/12/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_28Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_29IdentityIdentity_28:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_29Identity_29:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*
&
$
_user_specified_name
Variable_4:*	&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
4__inference_signature_wrapper_serving_default_128855

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@�
	unknown_4:	�%
	unknown_5:��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*.
_read_only_resource_inputs
	
*5
config_proto%#

CPU

GPU2*0J 8� �J *+
f&R$
"__inference_serving_default_128825o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:�����������: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name128851:&"
 
_user_specified_name128849:&
"
 
_user_specified_name128847:&	"
 
_user_specified_name128845:&"
 
_user_specified_name128843:&"
 
_user_specified_name128841:&"
 
_user_specified_name128839:&"
 
_user_specified_name128837:&"
 
_user_specified_name128835:&"
 
_user_specified_name128833:&"
 
_user_specified_name128831:&"
 
_user_specified_name128829:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
inputs9
serving_default_inputs:0�����������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:�@
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures"
_generic_user_object
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature"
_generic_user_object
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate

_momentums
_velocities"
_generic_user_object
�
trace_02�
"__inference_serving_default_128825�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
~
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12"
trackable_list_wrapper
 "
trackable_dict_wrapper
,
+serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
~
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12"
trackable_list_wrapper
~
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
,trace_02�
"__inference_serving_default_128919�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������z,trace_0
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:	 (2adam/iteration
: (2adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�B�
"__inference_serving_default_128825inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
y
-_inbound_nodes
._outbound_nodes
/_losses
0	_loss_ids
1_losses_override"
_generic_user_object
�
2_kernel
3bias
4_inbound_nodes
5_outbound_nodes
6_losses
7	_loss_ids
8_losses_override
9_build_shapes_dict"
_generic_user_object
y
:_inbound_nodes
;_outbound_nodes
<_losses
=	_loss_ids
>_losses_override"
_generic_user_object
�
?_kernel
@bias
A_inbound_nodes
B_outbound_nodes
C_losses
D	_loss_ids
E_losses_override
F_build_shapes_dict"
_generic_user_object
y
G_inbound_nodes
H_outbound_nodes
I_losses
J	_loss_ids
K_losses_override"
_generic_user_object
�
L_kernel
Mbias
N_inbound_nodes
O_outbound_nodes
P_losses
Q	_loss_ids
R_losses_override
S_build_shapes_dict"
_generic_user_object
y
T_inbound_nodes
U_outbound_nodes
V_losses
W	_loss_ids
X_losses_override"
_generic_user_object
�
Y_kernel
Zbias
[_inbound_nodes
\_outbound_nodes
]_losses
^	_loss_ids
__losses_override
`_build_shapes_dict"
_generic_user_object
y
a_inbound_nodes
b_outbound_nodes
c_losses
d	_loss_ids
e_losses_override"
_generic_user_object
y
f_inbound_nodes
g_outbound_nodes
h_losses
i	_loss_ids
j_losses_override"
_generic_user_object
�
k_kernel
lbias
m_inbound_nodes
n_outbound_nodes
o_losses
p	_loss_ids
q_losses_override
r_build_shapes_dict"
_generic_user_object
y
s_inbound_nodes
t_outbound_nodes
u_losses
v	_loss_ids
w_losses_override"
_generic_user_object
�
x_kernel
ybias
z_inbound_nodes
{_outbound_nodes
|_losses
}	_loss_ids
~_losses_override
_build_shapes_dict"
_generic_user_object
�B�
4__inference_signature_wrapper_serving_default_128855inputs"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jinputs
kwonlydefaults
 
annotations� *
 
�B�
"__inference_serving_default_128919inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
trackable_list_wrapper
2:0 2sequential/conv2d/kernel
$:" 2sequential/conv2d/bias
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
4:2 @2sequential/conv2d_1/kernel
&:$@2sequential/conv2d_1/bias
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5:3@�2sequential/conv2d_2/kernel
':%�2sequential/conv2d_2/bias
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
6:4��2sequential/conv2d_3/kernel
':%�2sequential/conv2d_3/bias
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
+:)
��2sequential/dense/kernel
$:"�2sequential/dense/bias
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
,:*	�2sequential/dense_1/kernel
%:#2sequential/dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
"__inference_serving_default_128825l23?@LMYZklxy9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
"__inference_serving_default_128919l23?@LMYZklxy9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
4__inference_signature_wrapper_serving_default_128855�23?@LMYZklxyC�@
� 
9�6
4
inputs*�'
inputs�����������"3�0
.
output_0"�
output_0���������