.class Lcom/viber/voip/messages/controller/a/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:J

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lcom/viber/jni/LocationInfo;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:I

.field final synthetic l:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)V
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

    .prologue
    .line 58
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/ao;->l:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/ao;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/ao;->b:Ljava/lang/String;

    iput-wide p5, p0, Lcom/viber/voip/messages/controller/a/ao;->c:J

    iput-object p7, p0, Lcom/viber/voip/messages/controller/a/ao;->d:Ljava/lang/String;

    iput-object p8, p0, Lcom/viber/voip/messages/controller/a/ao;->e:Ljava/lang/String;

    iput-wide p9, p0, Lcom/viber/voip/messages/controller/a/ao;->f:J

    iput p11, p0, Lcom/viber/voip/messages/controller/a/ao;->g:I

    iput p12, p0, Lcom/viber/voip/messages/controller/a/ao;->h:I

    iput-object p13, p0, Lcom/viber/voip/messages/controller/a/ao;->i:Lcom/viber/jni/LocationInfo;

    iput-object p14, p0, Lcom/viber/voip/messages/controller/a/ao;->j:Ljava/lang/String;

    iput p15, p0, Lcom/viber/voip/messages/controller/a/ao;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/messages/controller/a/ao;->l:Lcom/viber/voip/messages/controller/a/ac;

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

    .line 63
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/viber/voip/messages/controller/a/ao;->a:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/messages/controller/a/ao;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/viber/voip/messages/controller/a/ao;->c:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/viber/voip/messages/controller/a/ao;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/viber/voip/messages/controller/a/ao;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/viber/voip/messages/controller/a/ao;->f:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/viber/voip/messages/controller/a/ao;->g:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/viber/voip/messages/controller/a/ao;->h:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viber/voip/messages/controller/a/ao;->i:Lcom/viber/jni/LocationInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/viber/voip/messages/controller/a/ao;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/viber/voip/messages/controller/a/ao;->k:I

    move/from16 v16, v0

    invoke-virtual/range {v2 .. v16}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onTextReceivedFromGroup(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JIILcom/viber/jni/LocationInfo;Ljava/lang/String;I)Z

    .line 62
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
