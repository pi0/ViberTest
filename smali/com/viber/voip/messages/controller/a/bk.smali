.class Lcom/viber/voip/messages/controller/a/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[B

.field final synthetic f:J

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lcom/viber/jni/LocationInfo;

.field final synthetic j:I

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Ljava/lang/String;

.field final synthetic o:I

.field final synthetic p:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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

    .prologue
    .line 93
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bk;->p:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/bk;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/bk;->b:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/voip/messages/controller/a/bk;->c:J

    iput-object p7, p0, Lcom/viber/voip/messages/controller/a/bk;->d:Ljava/lang/String;

    iput-object p8, p0, Lcom/viber/voip/messages/controller/a/bk;->e:[B

    iput-wide p9, p0, Lcom/viber/voip/messages/controller/a/bk;->f:J

    iput p11, p0, Lcom/viber/voip/messages/controller/a/bk;->g:I

    iput p12, p0, Lcom/viber/voip/messages/controller/a/bk;->h:I

    iput-object p13, p0, Lcom/viber/voip/messages/controller/a/bk;->i:Lcom/viber/jni/LocationInfo;

    iput p14, p0, Lcom/viber/voip/messages/controller/a/bk;->j:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bk;->k:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bk;->l:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bk;->m:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/bk;->n:Ljava/lang/String;

    move/from16 v0, p19

    iput v0, p0, Lcom/viber/voip/messages/controller/a/bk;->o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/bk;->p:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v2}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v22

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/4 v2, 0x0

    move/from16 v21, v2

    :goto_0
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v2, v22, v21

    .line 98
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/viber/voip/messages/controller/a/bk;->a:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/messages/controller/a/bk;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/viber/voip/messages/controller/a/bk;->c:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viber/voip/messages/controller/a/bk;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/viber/voip/messages/controller/a/bk;->e:[B

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/viber/voip/messages/controller/a/bk;->f:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/viber/voip/messages/controller/a/bk;->g:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/viber/voip/messages/controller/a/bk;->h:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viber/voip/messages/controller/a/bk;->i:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/viber/voip/messages/controller/a/bk;->j:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bk;->k:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bk;->l:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bk;->m:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/bk;->n:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/voip/messages/controller/a/bk;->o:I

    move/from16 v20, v0

    invoke-virtual/range {v2 .. v20}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onMediaReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 97
    add-int/lit8 v2, v21, 0x1

    move/from16 v21, v2

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method
