.class Lcom/viber/voip/messages/controller/a/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:J

.field final synthetic h:J

.field final synthetic i:I

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:[Lcom/viber/jni/GroupAddedMember;

.field final synthetic l:I

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:Ljava/lang/String;

.field final synthetic p:[Ljava/lang/String;

.field final synthetic q:Lcom/viber/jni/LocationInfo;

.field final synthetic r:Ljava/lang/String;

.field final synthetic s:I

.field final synthetic t:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bo;->t:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/bo;->a:J

    iput p4, p0, Lcom/viber/voip/messages/controller/a/bo;->b:I

    iput-object p5, p0, Lcom/viber/voip/messages/controller/a/bo;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/viber/voip/messages/controller/a/bo;->d:Ljava/lang/String;

    iput p7, p0, Lcom/viber/voip/messages/controller/a/bo;->e:I

    iput p8, p0, Lcom/viber/voip/messages/controller/a/bo;->f:I

    iput-wide p9, p0, Lcom/viber/voip/messages/controller/a/bo;->g:J

    iput-wide p11, p0, Lcom/viber/voip/messages/controller/a/bo;->h:J

    iput p13, p0, Lcom/viber/voip/messages/controller/a/bo;->i:I

    iput-object p14, p0, Lcom/viber/voip/messages/controller/a/bo;->j:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bo;->k:[Lcom/viber/jni/GroupAddedMember;

    move/from16 v0, p16

    iput v0, p0, Lcom/viber/voip/messages/controller/a/bo;->l:I

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bo;->m:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bo;->n:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bo;->o:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bo;->p:[Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bo;->q:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bo;->r:Ljava/lang/String;

    move/from16 v0, p23

    iput v0, p0, Lcom/viber/voip/messages/controller/a/bo;->s:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/bo;->t:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v2}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v26

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/4 v2, 0x0

    move/from16 v25, v2

    :goto_0
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    aget-object v2, v26, v25

    .line 151
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/viber/voip/messages/controller/a/bo;->a:J

    move-object/from16 v0, p0

    iget v5, v0, Lcom/viber/voip/messages/controller/a/bo;->b:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viber/voip/messages/controller/a/bo;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/viber/voip/messages/controller/a/bo;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viber/voip/messages/controller/a/bo;->e:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/viber/voip/messages/controller/a/bo;->f:I

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/viber/voip/messages/controller/a/bo;->g:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/viber/voip/messages/controller/a/bo;->h:J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/viber/voip/messages/controller/a/bo;->i:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/voip/messages/controller/a/bo;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bo;->k:[Lcom/viber/jni/GroupAddedMember;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/voip/messages/controller/a/bo;->l:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bo;->m:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bo;->n:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bo;->o:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bo;->p:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bo;->q:Lcom/viber/jni/LocationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bo;->r:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/voip/messages/controller/a/bo;->s:I

    move/from16 v24, v0

    invoke-virtual/range {v2 .. v24}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onPublicGroupChanged(JILjava/lang/String;Ljava/lang/String;IIJJILjava/lang/String;[Lcom/viber/jni/GroupAddedMember;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z

    .line 150
    add-int/lit8 v2, v25, 0x1

    move/from16 v25, v2

    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method
