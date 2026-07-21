-ifndef(AMQP_DIST_HRL).

-include_lib("amqp_client/include/amqp_client.hrl").
-include_lib("kernel/include/logger.hrl").
-include_lib("kernel/include/net_address.hrl").
-include_lib("kernel/include/dist.hrl").
-include_lib("kernel/include/dist_util.hrl").

%% persistent_term key for the send/2 dispatch mode (async = gen_server:cast,
%% sync = gen_server:call). Read on the hot send path, so it lives in a
%% persistent_term rather than the app env `parameter' mechanism. Seeded from
%% the app env (send_mode, default async) at startup; changeable at runtime
%% via amqp_dist:set_send_mode/1.
-define(AMQP_DIST_SEND_MODE, {amqp_dist, send_mode}).
-define(AMQP_DIST_SEND_MODE_DEFAULT, async).

-define(AMQP_DIST_HRL, true).
-endif.
