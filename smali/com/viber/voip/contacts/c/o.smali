.class Lcom/viber/voip/contacts/c/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/t;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/n;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/viber/voip/contacts/c/o;->a:Lcom/viber/voip/contacts/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/viber/voip/messages/a/a;->a(Landroid/net/Uri;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 566
    return-void
.end method
