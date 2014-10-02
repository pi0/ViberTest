.class Lcom/facebook/Session$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/AuthorizationClient$OnCompletedListener;


# instance fields
.field final synthetic this$0:Lcom/facebook/Session;


# direct methods
.method constructor <init>(Lcom/facebook/Session;)V
    .locals 0
    .parameter

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 2
    .parameter

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/facebook/Session$2;->this$0:Lcom/facebook/Session;

    const/4 v1, -0x1

    #calls: Lcom/facebook/Session;->handleAuthorizationResult(ILcom/facebook/AuthorizationClient$Result;)V
    invoke-static {v0, v1, p1}, Lcom/facebook/Session;->access$200(Lcom/facebook/Session;ILcom/facebook/AuthorizationClient$Result;)V

    .line 1094
    return-void
.end method
