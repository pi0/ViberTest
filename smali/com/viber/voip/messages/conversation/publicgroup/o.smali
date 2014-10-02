.class Lcom/viber/voip/messages/conversation/publicgroup/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/a/b;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/o;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 6
    .parameter

    .prologue
    .line 285
    if-eqz p1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/o;->a:Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/publicgroup/CreatePublicGroupActivity;->a(DDLandroid/os/Bundle;)V

    .line 288
    :cond_0
    return-void
.end method
