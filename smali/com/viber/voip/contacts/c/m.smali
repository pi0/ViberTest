.class final Lcom/viber/voip/contacts/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/viber/voip/contacts/c/m;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 543
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/m;->a:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/viber/voip/contacts/c/n;

    invoke-direct {v2, p0}, Lcom/viber/voip/contacts/c/n;-><init>(Lcom/viber/voip/contacts/c/m;)V

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/k;)V

    .line 605
    return-void
.end method
