.class Lcom/viber/voip/messages/controller/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/bx;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Z

.field final synthetic g:Lcom/viber/jni/PublicGroupInfo;

.field final synthetic h:Lcom/viber/voip/messages/controller/ad;

.field final synthetic i:Lcom/viber/voip/messages/controller/ak;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/ak;ILjava/lang/String;JLjava/lang/String;IZLcom/viber/jni/PublicGroupInfo;Lcom/viber/voip/messages/controller/ad;)V
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

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/voip/messages/controller/bt;->i:Lcom/viber/voip/messages/controller/ak;

    iput p2, p0, Lcom/viber/voip/messages/controller/bt;->a:I

    iput-object p3, p0, Lcom/viber/voip/messages/controller/bt;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/viber/voip/messages/controller/bt;->c:J

    iput-object p6, p0, Lcom/viber/voip/messages/controller/bt;->d:Ljava/lang/String;

    iput p7, p0, Lcom/viber/voip/messages/controller/bt;->e:I

    iput-boolean p8, p0, Lcom/viber/voip/messages/controller/bt;->f:Z

    iput-object p9, p0, Lcom/viber/voip/messages/controller/bt;->g:Lcom/viber/jni/PublicGroupInfo;

    iput-object p10, p0, Lcom/viber/voip/messages/controller/bt;->h:Lcom/viber/voip/messages/controller/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/x;)V
    .locals 10
    .parameter

    .prologue
    .line 90
    iget v1, p0, Lcom/viber/voip/messages/controller/bt;->a:I

    iget-object v2, p0, Lcom/viber/voip/messages/controller/bt;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/viber/voip/messages/controller/bt;->c:J

    iget-object v5, p0, Lcom/viber/voip/messages/controller/bt;->d:Ljava/lang/String;

    iget v6, p0, Lcom/viber/voip/messages/controller/bt;->e:I

    iget-boolean v7, p0, Lcom/viber/voip/messages/controller/bt;->f:Z

    iget-object v8, p0, Lcom/viber/voip/messages/controller/bt;->g:Lcom/viber/jni/PublicGroupInfo;

    iget-object v9, p0, Lcom/viber/voip/messages/controller/bt;->h:Lcom/viber/voip/messages/controller/ad;

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/viber/voip/messages/controller/x;->a(ILjava/lang/String;JLjava/lang/String;IZLcom/viber/jni/PublicGroupInfo;Lcom/viber/voip/messages/controller/ad;)V

    .line 91
    return-void
.end method
