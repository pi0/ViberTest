.class Lcom/viber/voip/messages/ui/media/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/c;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:F

.field final synthetic f:J

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Z

.field final synthetic i:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;IIJLjava/lang/String;FJLjava/lang/String;Z)V
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
    .line 88
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/h;->i:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;

    iput p2, p0, Lcom/viber/voip/messages/ui/media/h;->a:I

    iput p3, p0, Lcom/viber/voip/messages/ui/media/h;->b:I

    iput-wide p4, p0, Lcom/viber/voip/messages/ui/media/h;->c:J

    iput-object p6, p0, Lcom/viber/voip/messages/ui/media/h;->d:Ljava/lang/String;

    iput p7, p0, Lcom/viber/voip/messages/ui/media/h;->e:F

    iput-wide p8, p0, Lcom/viber/voip/messages/ui/media/h;->f:J

    iput-object p10, p0, Lcom/viber/voip/messages/ui/media/h;->g:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/viber/voip/messages/ui/media/h;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Address;Ljava/lang/String;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/h;->i:Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;

    iget v3, p0, Lcom/viber/voip/messages/ui/media/h;->a:I

    iget v4, p0, Lcom/viber/voip/messages/ui/media/h;->b:I

    iget-wide v5, p0, Lcom/viber/voip/messages/ui/media/h;->c:J

    iget-object v7, p0, Lcom/viber/voip/messages/ui/media/h;->d:Ljava/lang/String;

    iget v8, p0, Lcom/viber/voip/messages/ui/media/h;->e:F

    iget-wide v9, p0, Lcom/viber/voip/messages/ui/media/h;->f:J

    iget-object v11, p0, Lcom/viber/voip/messages/ui/media/h;->g:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/viber/voip/messages/ui/media/h;->h:Z

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v12}, Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;->a(Lcom/viber/voip/messages/ui/media/GoogleApiMapPreViewActivity;Landroid/location/Address;Ljava/lang/String;IIJLjava/lang/String;FJLjava/lang/String;Z)V

    .line 92
    return-void
.end method
