.class Lcom/viber/voip/phone/call/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/ag;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/phone/call/f;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/call/f;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/viber/voip/phone/call/g;->b:Lcom/viber/voip/phone/call/f;

    iput-wide p2, p0, Lcom/viber/voip/phone/call/g;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/phone/call/g;->b:Lcom/viber/voip/phone/call/f;

    iget-object v1, v1, Lcom/viber/voip/phone/call/f;->a:Lcom/viber/voip/phone/call/a;

    invoke-static {v1}, Lcom/viber/voip/phone/call/a;->b(Lcom/viber/voip/phone/call/a;)Lcom/viber/voip/ViberApplication;

    move-result-object v1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/viber/voip/phone/call/g;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string/jumbo v15, "Viber"

    const/16 v16, 0x0

    move-object/from16 v4, p1

    move-object/from16 v13, p2

    invoke-static/range {v1 .. v16}, Lcom/viber/voip/util/q;->a(Landroid/content/Context;JLjava/lang/String;JJIIIILjava/lang/String;ILjava/lang/String;Lcom/viber/voip/calls/w;)V

    .line 417
    return-void
.end method
