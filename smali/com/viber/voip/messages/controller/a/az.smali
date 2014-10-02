.class Lcom/viber/voip/messages/controller/a/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[B

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/viber/jni/LocationInfo;

.field final synthetic h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
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
    .line 75
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/az;->m:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/az;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/az;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/messages/controller/a/az;->c:[B

    iput-wide p6, p0, Lcom/viber/voip/messages/controller/a/az;->d:J

    iput p8, p0, Lcom/viber/voip/messages/controller/a/az;->e:I

    iput p9, p0, Lcom/viber/voip/messages/controller/a/az;->f:I

    iput-object p10, p0, Lcom/viber/voip/messages/controller/a/az;->g:Lcom/viber/jni/LocationInfo;

    iput p11, p0, Lcom/viber/voip/messages/controller/a/az;->h:I

    iput-object p12, p0, Lcom/viber/voip/messages/controller/a/az;->i:Ljava/lang/String;

    iput-object p13, p0, Lcom/viber/voip/messages/controller/a/az;->j:Ljava/lang/String;

    iput-object p14, p0, Lcom/viber/voip/messages/controller/a/az;->k:Ljava/lang/String;

    iput-object p15, p0, Lcom/viber/voip/messages/controller/a/az;->l:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/az;->m:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v2}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v2, v18, v17

    .line 81
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/viber/voip/messages/controller/a/az;->a:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/messages/controller/a/az;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/viber/voip/messages/controller/a/az;->c:[B

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/viber/voip/messages/controller/a/az;->d:J

    move-object/from16 v0, p0

    iget v9, v0, Lcom/viber/voip/messages/controller/a/az;->e:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/viber/voip/messages/controller/a/az;->f:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/viber/voip/messages/controller/a/az;->g:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/viber/voip/messages/controller/a/az;->h:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/viber/voip/messages/controller/a/az;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viber/voip/messages/controller/a/az;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/voip/messages/controller/a/az;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/az;->l:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v2 .. v16}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onMediaReceived(JLjava/lang/String;[BJIILcom/viber/jni/LocationInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method
