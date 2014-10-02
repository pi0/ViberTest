.class Lcom/viber/voip/messages/controller/a/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:J

.field final synthetic e:I

.field final synthetic f:J

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:[Lcom/viber/jni/GroupUserInfo;

.field final synthetic k:Lcom/viber/voip/messages/controller/a/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/ac;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)V
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

    .prologue
    .line 162
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/bp;->k:Lcom/viber/voip/messages/controller/a/ac;

    iput-wide p2, p0, Lcom/viber/voip/messages/controller/a/bp;->a:J

    iput-object p4, p0, Lcom/viber/voip/messages/controller/a/bp;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/viber/voip/messages/controller/a/bp;->c:Ljava/lang/String;

    iput-wide p6, p0, Lcom/viber/voip/messages/controller/a/bp;->d:J

    iput p8, p0, Lcom/viber/voip/messages/controller/a/bp;->e:I

    iput-wide p9, p0, Lcom/viber/voip/messages/controller/a/bp;->f:J

    iput-object p11, p0, Lcom/viber/voip/messages/controller/a/bp;->g:Ljava/lang/String;

    iput-object p12, p0, Lcom/viber/voip/messages/controller/a/bp;->h:Ljava/lang/String;

    iput p13, p0, Lcom/viber/voip/messages/controller/a/bp;->i:I

    iput-object p14, p0, Lcom/viber/voip/messages/controller/a/bp;->j:[Lcom/viber/jni/GroupUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/messages/controller/a/bp;->k:Lcom/viber/voip/messages/controller/a/ac;

    invoke-static {v1}, Lcom/viber/voip/messages/controller/a/ac;->a(Lcom/viber/voip/messages/controller/a/ac;)[Lcom/viber/voip/messages/controller/a/a;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v1, 0x0

    move v15, v1

    :goto_0
    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    aget-object v1, v16, v15

    .line 167
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/viber/voip/messages/controller/a/bp;->a:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/messages/controller/a/bp;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/viber/voip/messages/controller/a/bp;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/viber/voip/messages/controller/a/bp;->d:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/viber/voip/messages/controller/a/bp;->e:I

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/viber/voip/messages/controller/a/bp;->f:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/viber/voip/messages/controller/a/bp;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/viber/voip/messages/controller/a/bp;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/viber/voip/messages/controller/a/bp;->i:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/viber/voip/messages/controller/a/bp;->j:[Lcom/viber/jni/GroupUserInfo;

    invoke-virtual/range {v1 .. v14}, Lcom/viber/jni/PhoneControllerDelegateAdapter;->onGroupChanged(JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;I[Lcom/viber/jni/GroupUserInfo;)Z

    .line 166
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method
